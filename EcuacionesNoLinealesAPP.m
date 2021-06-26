function varargout = EcuacionesNoLinealesAPP(varargin)
% ECUACIONESNOLINEALESAPP MATLAB code for EcuacionesNoLinealesAPP.fig
%      ECUACIONESNOLINEALESAPP, by itself, creates a new ECUACIONESNOLINEALESAPP or raises the existing
%      singleton*.
%
%      H = ECUACIONESNOLINEALESAPP returns the handle to a new ECUACIONESNOLINEALESAPP or the handle to
%      the existing singleton*.
%
%      ECUACIONESNOLINEALESAPP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECUACIONESNOLINEALESAPP.M with the given input arguments.
%
%      ECUACIONESNOLINEALESAPP('Property','Value',...) creates a new ECUACIONESNOLINEALESAPP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EcuacionesNoLinealesAPP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EcuacionesNoLinealesAPP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EcuacionesNoLinealesAPP

% Last Modified by GUIDE v2.5 25-Jun-2021 18:54:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EcuacionesNoLinealesAPP_OpeningFcn, ...
                   'gui_OutputFcn',  @EcuacionesNoLinealesAPP_OutputFcn, ...
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


% --- Executes just before EcuacionesNoLinealesAPP is made visible.
function EcuacionesNoLinealesAPP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EcuacionesNoLinealesAPP (see VARARGIN)

% Boton atras ------------------------------
hold off;
axesChild = imshow('icons\atrasIcon.png');
set(axesChild, 'buttonDownFcn', @irAtras);
% Tomado de:
% https://itectec.com/matlab/matlab-callback-of-axes-in-figure-not-being-called/
% ------------------------------------------

axes(handles.logoUIS);
imshow('icons\UISHorizontal.png');
axes(handles.iconoBiseccion);
%imshow('icons\iconoMetodoBiseccion.png');
axes(handles.iconoNewton);
%imshow('icons\iconoMetodoNewton.png');
axes(handles.iconoPunto);
%imshow('icons\iconoMetodoPuntoFijo.png');

% Choose default command line output for EcuacionesNoLinealesAPP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EcuacionesNoLinealesAPP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EcuacionesNoLinealesAPP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in BotonInicio.
function BotonInicio_Callback(hObject, eventdata, handles)
close;
MetodosNumericosMainAPP;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BotonBiseccion.
function BotonBiseccion_Callback(hObject, eventdata, handles)
close;
MetodoBiseccion;


% --- Executes on button press in BotonNewton.
function BotonNewton_Callback(hObject, eventdata, handles)
close;
MetodoNewtonRaphson;

% --- Executes on button press in BotonPunto.
function BotonPunto_Callback(hObject, eventdata, handles)
close;
MetodoPuntoFijo;


function irAtras(hObject, eventdata, handles)
close;
MetodosNumericosMainAPP;



% --- Executes on mouse press over axes background.
function botonAtrasImagen_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to botonAtrasImagen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
