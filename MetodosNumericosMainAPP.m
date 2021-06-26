function varargout = MetodosNumericosMainAPP(varargin)
% METODOSNUMERICOSMAINAPP MATLAB code for MetodosNumericosMainAPP.fig
%      METODOSNUMERICOSMAINAPP, by itself, creates a new METODOSNUMERICOSMAINAPP or raises the existing
%      singleton*.
%
%      H = METODOSNUMERICOSMAINAPP returns the handle to a new METODOSNUMERICOSMAINAPP or the handle to
%      the existing singleton*.
%
%      METODOSNUMERICOSMAINAPP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in METODOSNUMERICOSMAINAPP.M with the given input arguments.
%
%      METODOSNUMERICOSMAINAPP('Property','Value',...) creates a new METODOSNUMERICOSMAINAPP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MetodosNumericosMainAPP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MetodosNumericosMainAPP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MetodosNumericosMainAPP

% Last Modified by GUIDE v2.5 03-Jun-2018 16:04:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MetodosNumericosMainAPP_OpeningFcn, ...
                   'gui_OutputFcn',  @MetodosNumericosMainAPP_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MetodosNumericosMainAPP is made visible.
function MetodosNumericosMainAPP_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
clc;

axes(handles.LogoUIS);
imshow('icons\UISHorizontal.png');

% Choose default command line output for MetodosNumericosMainAPP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MetodosNumericosMainAPP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MetodosNumericosMainAPP_OutputFcn(hObject, eventdata, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Ecuacionesnolineales_linker.
function Ecuacionesnolineales_linker_Callback(hObject, eventdata, handles)
close;
EcuacionesNoLinealesAPP;



% --- Executes on button press in Ecuacioneslineales_linker.
function Ecuacioneslineales_linker_Callback(hObject, eventdata, handles)
close;
SistemasEcuacionesLinealesAPP;



% --- Executes on button press in Interpolacion_linker.
function Interpolacion_linker_Callback(hObject, eventdata, handles)
close;
AproximacionFuncionesInterpolacionAPP;



% --- Executes on button press in Diferenciacionintegracion_linker.
function Diferenciacionintegracion_linker_Callback(hObject, eventdata, handles)
close;
DiferenciacionIntegracionNumericaAPP;
