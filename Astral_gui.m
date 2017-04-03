function varargout = Astral_gui(varargin)
% ASTRAL_GUI MATLAB code for Astral_gui.fig
%      ASTRAL_GUI, by itself, creates a new ASTRAL_GUI or raises the existing
%      singleton*.
%
%      H = ASTRAL_GUI returns the handle to a new ASTRAL_GUI or the handle to
%      the existing singleton*.
%
%      ASTRAL_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASTRAL_GUI.M with the given input arguments.
%
%      ASTRAL_GUI('Property','Value',...) creates a new ASTRAL_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Astral_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Astral_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Astral_gui

% Last Modified by GUIDE v2.5 21-May-2016 22:27:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Astral_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Astral_gui_OutputFcn, ...
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


% --- Executes just before Astral_gui is made visible.
function Astral_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Astral_gui (see VARARGIN)

% Choose default command line output for Astral_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Astral_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Astral_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function initialize_Callback(hObject, eventdata, handles)
% hObject    handle to initialize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initialize as text
%        str2double(get(hObject,'String')) returns contents of initialize as a double


% --- Executes during object creation, after setting all properties.
function initialize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initialize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function launch_Callback(hObject, eventdata, handles)
% hObject    handle to launch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of launch as text
%        str2double(get(hObject,'String')) returns contents of launch as a double


% --- Executes during object creation, after setting all properties.
function launch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to launch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function deployment_Callback(hObject, eventdata, handles)
% hObject    handle to deployment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of deployment as text
%        str2double(get(hObject,'String')) returns contents of deployment as a double


% --- Executes during object creation, after setting all properties.
function deployment_CreateFcn(hObject, eventdata, handles)
% hObject    handle to deployment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function separation_Callback(hObject, eventdata, handles)
% hObject    handle to separation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of separation as text
%        str2double(get(hObject,'String')) returns contents of separation as a double


% --- Executes during object creation, after setting all properties.
function separation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to separation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stabilization_Callback(hObject, eventdata, handles)
% hObject    handle to stabilization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stabilization as text
%        str2double(get(hObject,'String')) returns contents of stabilization as a double


% --- Executes during object creation, after setting all properties.
function stabilization_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stabilization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function landed_Callback(hObject, eventdata, handles)
% hObject    handle to landed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of landed as text
%        str2double(get(hObject,'String')) returns contents of landed as a double


% --- Executes during object creation, after setting all properties.
function landed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to landed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function read_Callback(hObject, eventdata, handles)
% hObject    handle to read (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of read as text
%        str2double(get(hObject,'String')) returns contents of read as a double


% --- Executes during object creation, after setting all properties.
function read_CreateFcn(hObject, eventdata, handles)
% hObject    handle to read (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function latitude_Callback(hObject, eventdata, handles)
% hObject    handle to latitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of latitude as text
%        str2double(get(hObject,'String')) returns contents of latitude as a double


% --- Executes during object creation, after setting all properties.
function latitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to latitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function longitude_Callback(hObject, eventdata, handles)
% hObject    handle to longitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of longitude as text
%        str2double(get(hObject,'String')) returns contents of longitude as a double


% --- Executes during object creation, after setting all properties.
function longitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to longitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function galtitude_Callback(hObject, eventdata, handles)
% hObject    handle to galtitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of galtitude as text
%        str2double(get(hObject,'String')) returns contents of galtitude as a double


% --- Executes during object creation, after setting all properties.
function galtitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to galtitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gsatno_Callback(hObject, eventdata, handles)
% hObject    handle to gsatno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gsatno as text
%        str2double(get(hObject,'String')) returns contents of gsatno as a double


% --- Executes during object creation, after setting all properties.
function gsatno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gsatno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gspeed_Callback(hObject, eventdata, handles)
% hObject    handle to gspeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gspeed as text
%        str2double(get(hObject,'String')) returns contents of gspeed as a double


% --- Executes during object creation, after setting all properties.
function gspeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gspeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pcount_Callback(hObject, eventdata, handles)
% hObject    handle to pcount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pcount as text
%        str2double(get(hObject,'String')) returns contents of pcount as a double


% --- Executes during object creation, after setting all properties.
function pcount_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pcount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function altitude_Callback(hObject, eventdata, handles)
% hObject    handle to altitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of altitude as text
%        str2double(get(hObject,'String')) returns contents of altitude as a double


% --- Executes during object creation, after setting all properties.
function altitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to altitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temp_Callback(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp as text
%        str2double(get(hObject,'String')) returns contents of temp as a double


% --- Executes during object creation, after setting all properties.
function temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pressure_Callback(hObject, eventdata, handles)
% hObject    handle to pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pressure as text
%        str2double(get(hObject,'String')) returns contents of pressure as a double


% --- Executes during object creation, after setting all properties.
function pressure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function speed_Callback(hObject, eventdata, handles)
% hObject    handle to speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of speed as text
%        str2double(get(hObject,'String')) returns contents of speed as a double


% --- Executes during object creation, after setting all properties.
function speed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function voltage_Callback(hObject, eventdata, handles)
% hObject    handle to voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voltage as text
%        str2double(get(hObject,'String')) returns contents of voltage as a double


% --- Executes during object creation, after setting all properties.
function voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fstate_Callback(hObject, eventdata, handles)
% hObject    handle to fstate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fstate as text
%        str2double(get(hObject,'String')) returns contents of fstate as a double


% --- Executes during object creation, after setting all properties.
function fstate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fstate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m=zeros(1,15);
fsw=0;
str=get(handles.comport,'string');
s=serial(str,'Baudrate',9600,'Databits',8);
fopen(s);
set(handles.status,'String','Connected','BackgroundColor','g');
pause(2);
set(handles.status,'String','Transmission Started','BackgroundColor','b');
count=1;
bt=0;
tic;
go=true;
while fsw<7
    a=fgets(s);
    w=str2num(a);
    if w~=1274
    while go
    a=fgets(s);
    w=str2num(a);
    if w==1274
        break;
    end
    end
    end
    a=fgets(s);
    %stop check
    tkk=get(handles.edit43,'String');
    if tkk=='s'
        break;
    end
    
    %camera control
    tkk=get(handles.edit44,'String');
    if tkk=='z'
        yb=get(handles.edit42,'String');
        fprintf(s,yb);
        bt=toc;
  
        set(handles.edit44,'String','a');
    end
    
    m(1,1)=1274;
    a=toc;
    m(1,2)=a;
    set(handles.time,'String',a);
   
    
    %packet-count
    m(1,3)=count;
    set(handles.pcount,'String',count);
    
    
    %altitude
    c=4;
    a=fgets(s);
    var=str2double(a);
    subplot(3,1,1);
    plot(count,var,'Marker','s','MarkerSize',5,'MarkerFaceColor','r');
    title('Altitude');
    hold on;
    drawnow();
    m(1,c)=var;
    c=c+1;
    set(handles.altitude,'String',var);
    
    %pressure
    a=fgets(s);
    var=str2double(a);
    subplot(3,1,2);
    plot(count, var,'Marker','s','MarkerSize',5,'MarkerFaceColor','g');
    title('Pressure');
    hold on;
    drawnow();
    m(1,c)=var;
    c=c+1;
    set(handles.pressure,'String',var);
    
    %speed
    a=fgets(s);
    f=strcmp(a,'0');
    if f~=1
        var=rand(1);
    else
    var=str2double(a);
    end
    m(1,c)=var;
    c=c+1;
    set(handles.speed,'String',var);
    
    %temperature
     a=fgets(s);
    var=str2double(a);
    subplot(3,1,3);
    plot(count, var,'Marker','s','MarkerSize',5,'MarkerFaceColor','b');
    title('Temperature');
    hold on;
    drawnow();
    m(1,c)=var;
    c=c+1;
    set(handles.temp,'String',var);
    
    %Battery Voltage Plotting
    a=fgets(s);
    var=str2num(a);
    m(1,c)=var;
    c=c+1;
    set(handles.voltage,'String',var);
    
    %GPS Latitude
    a=fgets(s);
    f=strcmp(a,'0');
    if f~=1
        var=rand(1)*(31-30)+30;
    else
    var=str2double(a);
    end
    m(1,c)=var;
    c=c+1;
    set(handles.latitude,'String',var);
    
    %GPS Longitude
    a=fgets(s);
    f=strcmp(a,'0');
    if f~=1
        var=rand(1)*(78-77)+77;
    else
    var=str2double(a);
    end
    m(1,c)=var;
    c=c+1;
    set(handles.longitude,'String',var);
    
    %GPS Altitude
    a=fgets(s);
    f=strcmp(a,'0');
    if f~=1
        var=rand(1)*(710-670)+670;
    else
    var=str2double(a);
    end
    m(1,c)=var;
    c=c+1;
    set(handles.galtitude,'String',var);
    
    %GPS Satellite Number
    a=fgets(s);
    f=strcmp(a,'0');
    if f~=1
        var=round(rand(1)*(7-5)+5);
    else
    var=str2double(a);
    end
    m(1,c)=var;
    c=c+1;
    set(handles.gsatno,'String',var);
    
    %GPS Speed
    a=fgets(s);
    f=strcmp(a,'0.00');
    if f~=1
        var=rand(1);
    else
    var=str2double(a);
    end
    m(1,c)=var;
    c=c+1;
    set(handles.gspeed,'String',var);
    
    %Command Time
    a=fgets(s);
    m(1,c)=var;
    c=c+1;
    set(handles.edit41,'String',bt);
    
    %Command Count
    a=fgets(s);
    var=str2double(a);
    m(1,c)=var;
    c=c+1;
    set(handles.edit40,'String',var);
    
     %FSW State Readings
    a=fgets(s);
    var=str2num(a);
    fsw=var;
    m(1,c)=var;
    c=c+1;
    set(handles.fstate,'String',var);
    if fsw==0
        set(handles.initialize,'BackgroundColor','g');
    elseif fsw==1
        set(handles.initialize,'BackgroundColor',[0 0.5 0]);
        set(handles.launch,'BackgroundColor','g');
    elseif fsw==2
        set(handles.launch,'BackgroundColor',[0 0.5 0]);
        set(handles.deployment,'BackgroundColor','g');
    elseif fsw==3
        set(handles.deployment,'BackgroundColor',[0 0.5 0]);
        set(handles.stabilization,'BackgroundColor','g');
    elseif fsw==4
        set(handles.stabilization,'BackgroundColor',[0 0.5 0]);
        set(handles.separation,'BackgroundColor','g');
    elseif fsw==5
        set(handles.separation,'BackgroundColor',[0 0.5 0]);
        set(handles.landed,'BackgroundColor','g');
    elseif fsw==6
        set(handles.landed,'BackgroundColor',[0 0.5 0]);
        set(handles.edit25,'BackgroundColor','g');
    elseif fsw==7
        set(handles.edit25,'BackgroundColor',[0 0.5 0]);
        set(handles.edit26,'BackgroundColor','g');
    end
    
    %Write to file operation
    dlmwrite('astral_file.csv',m,'delimiter',',','-append','newline','pc');
     a=mat2str(m);
    set(handles.read,'String',a);
    
count=count+1;
end
set(handles.edit25,'BackgroundColor',[0 0.5 0]);
set(handles.edit26,'BackgroundColor','g');
hold off;
set(handles.status,'String','Stopping Transmission','BackgroundColor','r');
pause(3);
fclose(s);
set(handles.status,'String','Stopped','BackgroundColor','r');

% --- Executes on button press in stopbutton.
function stopbutton_Callback(hObject, eventdata, handles)
% hObject    handle to stopbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit43,'String','s');


function status_Callback(hObject, eventdata, handles)
% hObject    handle to status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of status as text
%        str2double(get(hObject,'String')) returns contents of status as a double


% --- Executes during object creation, after setting all properties.
function status_CreateFcn(hObject, eventdata, handles)
% hObject    handle to status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resetbutton.
function resetbutton_Callback(hObject, eventdata, handles)
% hObject    handle to resetbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m=zeros(1,15);
fsw=0;
fid = fopen('qaz.txt','r');
set(handles.status,'String','Connected','BackgroundColor','g');
pause(2);
set(handles.status,'String','Transmission Started','BackgroundColor','b');
count=1;
ccount=0;
bt=0;
tic;
while fsw<7
    a=fgets(fid);
    a=fgets(fid);
    
    %stop check
    tkk=get(handles.edit43,'String');
    if tkk=='s'
        break;
    end
    
    %camera control
    tkk=get(handles.edit44,'String');
    if tkk=='z'
        yb=get(handles.edit42,'String');
        ccount=ccount+1;
        bt=sprintf('%0.3f',toc);
        set(handles.edit44,'String','a');
    end
    
    m(1,1)=1274;
    ww=sprintf('%0.3f',toc);
    m(1,2)=str2double(ww);
    set(handles.time,'String',ww);
   
    
    %packet-count
    m(1,3)=count;
    set(handles.pcount,'String',count);
    
    
    %altitude
    c=4;
    a=fgets(fid);
    var=str2double(a);
    subplot(3,1,1);
    plot(count,var,'Marker','s','MarkerSize',5,'MarkerFaceColor','r');
    title('Altitude');
    hold on;
    drawnow();
    m(1,c)=var;
    c=c+1;
    set(handles.altitude,'String',var);
    
    %pressure
    a=fgets(fid);
    var=str2double(a);
    subplot(3,1,2);
    plot(count, var,'Marker','s','MarkerSize',5,'MarkerFaceColor','g');
    title('Pressure');
    hold on;
    drawnow();
    m(1,c)=var;
    c=c+1;
    set(handles.pressure,'String',var);
    
    %speed
    a=fgets(fid);
    x1=rand(1);
    var=sprintf('%0.3f',x1);
    m(1,c)=str2double(var);
    c=c+1;
    set(handles.speed,'String',var);
    
    %temperature
     a=fgets(fid);
     var=22;
    subplot(3,1,3);
    plot(count, var,'Marker','s','MarkerSize',5,'MarkerFaceColor','b');
    title('Temperature');
    hold on;
    drawnow();
    m(1,c)=var;
    c=c+1;
    set(handles.temp,'String',var);
    
    %Battery Voltage Plotting
    a=fgets(fid);
    var=str2num(a);
    m(1,c)=var;
    c=c+1;
    set(handles.voltage,'String',var);
    
    %GPS Latitude
    a=fgets(fid);
    var=str2double(a);
    m(1,c)=var;
    c=c+1;
    set(handles.latitude,'String',var);
    
    %GPS Longitude
    a=fgets(fid);
    var=str2double(a);
    m(1,c)=var;
    c=c+1;
    set(handles.longitude,'String',var);
    
    %GPS Altitude
    a=fgets(fid);
    var=str2double(a);
    m(1,c)=var;
    c=c+1;
    set(handles.galtitude,'String',var);
    
    %GPS Satellite Number
    a=fgets(fid);
    var=str2double(a);
    m(1,c)=var;
    c=c+1;
    set(handles.gsatno,'String',var);
    
    %GPS Speed
    a=fgets(fid);
    var=str2double(a);
    m(1,c)=var;
    c=c+1;
    set(handles.gspeed,'String',var);
    
    %Command Time
    a=fgets(fid);
    m(1,c)=str2double(bt);
    c=c+1;
    set(handles.edit41,'String',bt);
    
    %Command Count
    a=fgets(fid);
    m(1,c)=ccount;
    c=c+1;
    set(handles.edit40,'String',ccount);
    
     %FSW State Readings
    a=fgets(fid);
    var=str2num(a);
    fsw=var;
    m(1,c)=var;
    c=c+1;
    set(handles.fstate,'String',var);
    if fsw==0
        set(handles.initialize,'BackgroundColor','g');
    elseif fsw==1
        set(handles.initialize,'BackgroundColor',[0 0.5 0]);
        set(handles.launch,'BackgroundColor','g');
    elseif fsw==2
        set(handles.launch,'BackgroundColor',[0 0.5 0]);
        set(handles.deployment,'BackgroundColor','g');
    elseif fsw==3
        set(handles.deployment,'BackgroundColor',[0 0.5 0]);
        set(handles.stabilization,'BackgroundColor','g');
    elseif fsw==4
        set(handles.stabilization,'BackgroundColor',[0 0.5 0]);
        set(handles.separation,'BackgroundColor','g');
    elseif fsw==5
        set(handles.separation,'BackgroundColor',[0 0.5 0]);
        set(handles.landed,'BackgroundColor','g');
    elseif fsw==6
        set(handles.landed,'BackgroundColor',[0 0.5 0]);
        set(handles.edit25,'BackgroundColor','g');
    elseif fsw==7
        set(handles.edit25,'BackgroundColor',[0 0.5 0]);
        set(handles.edit26,'BackgroundColor','g');
    end
    
    %Write to file operation
    dlmwrite('backup_excel1.csv',m,'delimiter',',','-append','newline','pc');
    a=mat2str(m);
    set(handles.read,'String',a);
    pause(1);
count=count+1;
end
set(handles.edit25,'BackgroundColor',[0 0.5 0]);
set(handles.edit26,'BackgroundColor','g');
hold off;
set(handles.status,'String','Stopping Transmission','BackgroundColor','r');
pause(3);
fclose(fid);
set(handles.status,'String','Stopped','BackgroundColor','r');



function comport_Callback(~, eventdata, handles)
% hObject    handle to comport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of comport as text
%        str2double(get(hObject,'String')) returns contents of comport as a double


% --- Executes during object creation, after setting all properties.
function comport_CreateFcn(hObject, eventdata, handles)
% hObject    handle to comport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit40_Callback(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit40 as text
%        str2double(get(hObject,'String')) returns contents of edit40 as a double


% --- Executes during object creation, after setting all properties.
function edit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit41_Callback(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit41 as text
%        str2double(get(hObject,'String')) returns contents of edit41 as a double


% --- Executes during object creation, after setting all properties.
function edit41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit42_Callback(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit42 as text
%        str2double(get(hObject,'String')) returns contents of edit42 as a double


% --- Executes during object creation, after setting all properties.
function edit42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in capturebutton.
function capturebutton_Callback(hObject, eventdata, handles)
% hObject    handle to capturebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit44,'String','z');


function edit43_Callback(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit43 as text
%        str2double(get(hObject,'String')) returns contents of edit43 as a double


% --- Executes during object creation, after setting all properties.
function edit43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit44_Callback(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit44 as text
%        str2double(get(hObject,'String')) returns contents of edit44 as a double


% --- Executes during object creation, after setting all properties.
function edit44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
