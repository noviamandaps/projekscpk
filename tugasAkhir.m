function varargout = tugasAkhir(varargin)
% TUGASAKHIR MATLAB code for tugasAkhir.fig
%      TUGASAKHIR, by itself, creates a new TUGASAKHIR or raises the existing
%      singleton*.
%
%      H = TUGASAKHIR returns the handle to a new TUGASAKHIR or the handle to
%      the existing singleton*.
%
%      TUGASAKHIR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGASAKHIR.M with the given input arguments.
%
%      TUGASAKHIR('Property','Value',...) creates a new TUGASAKHIR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugasAkhir_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugasAkhir_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugasAkhir

% Last Modified by GUIDE v2.5 23-May-2022 22:30:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugasAkhir_OpeningFcn, ...
                   'gui_OutputFcn',  @tugasAkhir_OutputFcn, ...
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


% --- Executes just before tugasAkhir is made visible.
function tugasAkhir_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugasAkhir (see VARARGIN)

% Choose default command line output for tugasAkhir
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugasAkhir wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugasAkhir_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tabeldata = xlsread('datarumah.xlsx','a2:f9');

set(handles.uitable1,'data',tabeldata)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Kriteria = [1/1 1/5 1/4 1/3 1/2;
            5/1 5/5 1/2 1/2 1/2;
            4/1 2/1 4/4 3/1 4/1;
            3/1 2/1 1/3 3/3 3/1;
            2/1 2/1 1/4 1/3 2/2];

w_kriteria = calc_norm(Kriteria);
w_kriteria = average(w_kriteria);

%LB
LB = [218/218 218/200 218/180 218/126 218/400 218/150 218/200 218/450;
    200/218 200/200 200/180 200/126 200/400 200/150 200/200 200/450;
    180/218 180/200 180/180 180/126 180/400 180/150 180/200 180/450;
    126/218 126/200 126/180 126/126 126/400 126/150 126/200 126/450;
    400/218 400/200 400/180 400/126 400/400 400/150 400/200 400/450;
    150/218 150/200 150/180 150/126 150/400 150/150 150/200 150/450;
    200/218 200/200 200/180 200/126 200/400 200/150 200/200 200/450;
    450/218 450/200 450/180 450/126 450/400 450/150 450/200 450/450];

w_LB = calc_norm(LB);
w_LB = average(w_LB);

%LT
LT = [118/118 118/979 118/137 118/144 118/150 118/253 118/251 118/248;
    979/118 979/979 979/137 979/144 979/150 979/253 979/251 979/248;
    137/118 137/979 137/137 137/144 137/150 137/253 137/251 137/248;
    144/118 144/979 144/137 144/144 144/150 144/253 144/251 144/248;
    150/118 150/979 150/137 150/144 150/150 150/253 150/251 150/248;
    253/118 253/979 253/137 253/144 253/150 253/253 253/251 253/248;
    251/118 251/979 251/137 251/144 251/150 251/253 251/251 251/248;
    248/118 248/979 248/137 248/144 248/150 248/253 248/251 248/248];

w_LT = calc_norm(LT);
w_LT = average(w_LT);

%KT
KT = [3/3 3/4 3/5 3/4 3/5 3/5 3/5 3/5;
    4/3 4/4 4/5 4/4 4/5 4/5 4/5 4/5;
    5/3 5/4 5/5 5/4 5/5 5/5 5/5 5/5;
    4/3 4/4 4/5 4/4 4/5 4/5 4/5 4/5;
    5/3 5/4 5/5 5/4 5/5 5/5 5/5 5/5;
    5/3 5/4 5/5 5/4 5/5 5/5 5/5 5/5;
    5/3 5/4 5/5 5/4 5/5 5/5 5/5 5/5;
    5/3 5/4 5/5 5/4 5/5 5/5 5/5 5/5];

w_KT = calc_norm(KT);
w_KT = average(w_KT);

%KM
KM = [3/3 3/2 3/4 3/2 3/4 3/2 3/3 3/5;
    2/3 2/2 2/4 2/2 2/4 2/2 2/3 2/5;
    4/3 4/2 4/4 4/2 4/4 4/2 4/3 4/5;
    2/3 2/2 2/4 2/2 2/4 2/2 2/3 2/5;
    4/3 4/2 4/4 4/2 4/4 4/2 4/3 4/5;
    2/3 2/2 2/4 2/2 2/4 2/2 2/3 2/5;
    3/3 3/2 3/4 3/2 3/4 3/2 3/3 3/5;
    5/3 5/2 5/4 5/2 5/4 5/2 5/3 5/5];

w_KM = calc_norm(KM);
w_KM = average(w_KM);

%GR
GR = [2/2 2/6 2/2 2/2 2/1 2/2 2/3 2/4;
    6/2 6/6 6/2 6/2 6/1 6/2 6/3 6/4;
    2/2 2/6 2/2 2/2 2/1 2/2 2/3 2/4;
    2/2 2/6 2/2 2/2 2/1 2/2 2/3 2/4;
    1/2 1/6 1/2 1/2 1/1 1/2 1/3 1/4;
    2/2 2/6 2/2 2/2 2/1 2/2 2/3 2/4;
    3/2 3/6 3/2 3/2 3/1 3/2 3/3 3/4;
    4/2 4/6 4/2 4/2 4/1 4/2 4/3 4/4];

w_GR = calc_norm(GR);
w_GR = average(w_GR);

matrix = [w_LB w_LT w_KT w_KM w_GR];
disp(matrix);

skor=matrix * w_kriteria;

disp(skor);
maxSkor = max(skor);
disp(maxSkor);
set(handles.uitable2,'data',LB)
set(handles.uitable3,'data',LT)
set(handles.uitable4,'data',KT)
set(handles.uitable5,'data',KM)
set(handles.uitable6,'data',GR)
set(handles.uitable7,'data',skor)
set(handles.edit1,'String',maxSkor)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1,'data','')
set(handles.uitable2,'data','')
set(handles.uitable3,'data','')
set(handles.uitable4,'data','')
set(handles.uitable5,'data','')
set(handles.uitable6,'data','')
set(handles.uitable7,'data','')
set(handles.edit1,'String','')
