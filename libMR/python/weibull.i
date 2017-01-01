// Swig interface for libweibull
// Author: Chris Eberle <ceberle@securics.com>

%module(docstring="Core weibull functionality",package="pyweibull") pyweibullw

%{
#include "weibull.h"
%}

%typemap(in, numinputs=0) double *weibull_parms (double temp[2])
{
    $1 = &(temp[0]);
}

%typemap(argout) double *weibull_parms
{
    PyObject *o = PyList_New(2);
    for(int i = 0; i < 2; i++)
    {
        PyList_SetItem(o, i, PyFloat_FromDouble($1[i]));
    }

    if (!PyList_Check($result))
    {
        PyObject *o2 = $result;
        $result = PyList_New(1);
        PyList_SetItem($result, 0, o2);
        Py_XDECREF(o2);
    }

    PyList_Append($result, o);
    Py_XDECREF(o);
}

%typemap(in, numinputs=0) double *wparm_confidenceintervals (double temp[4])
{
    $1 = &(temp[0]);
}

%typemap(argout) double *wparm_confidenceintervals
{
    PyObject *o = PyList_New(4);
    for(int i = 0; i < 4; i++)
    {
        PyList_SetItem(o, i, PyFloat_FromDouble($1[i]));
    }

    if (!PyList_Check($result))
    {
        PyObject *o2 = $result;
        $result = PyList_New(1);
        PyList_SetItem($result, 0, o2);
        Py_XDECREF(o2);
    }

    PyList_Append($result, o);
    Py_XDECREF(o);
}

%typemap(in) double* inputData
{
    if (!PyTuple_Check($input) && !PyList_Check($input))
    {
        PyErr_SetString(PyExc_TypeError, "Expecting a sequence");
        SWIG_fail;
    }

    int is_tuple = PyTuple_Check($input);

    // SIZE HACK
    arg5 = PyList_Size($input);
    $1 = (double*)malloc(sizeof(double) * arg5);

    for(int i = 0; i < arg5; ++i)
    {
        PyObject* const entry = is_tuple ? PyTuple_GetItem($input, i) : PyList_GetItem($input, i);
        $1[i] = PyFloat_AsDouble(entry);
    }
}

%typemap(freearg) double* inputData
{
    free($1);
}

%typemap(in, numinputs=0) int size
{
    // Don't need to do anything with size here
}

%feature("autodoc", "weibull_fit(inputData, alpha) -> (success, weibull_parms, wparm_ci)") weibull_fit;
int weibull_fit(double* weibull_parms, double* wparm_confidenceintervals, double* inputData, double alpha, int size);

%feature("autodoc", "weibull_cdf(x, scale, shape) -> cdf") weibull_cdf;
double weibull_cdf(double x, double scale, double shape);

%feature("autodoc", "weibull_inv(x, scale, shape) -> icdf") weibull_inv;
double weibull_inv(double x, double scale, double shape);

%typemap(in, numinputs=0) FILE *fh
{
    $1 = NULL;
}

%feature("autodoc", "printWeibullBuildInfo() -> None") printWeibullBuildInfo;
void printWeibullBuildInfo(FILE *fh);

