function varargout = ledCube(varargin)
% LEDCUBE MATLAB code for ledCube.fig
%      LEDCUBE, by itself, creates a new LEDCUBE or raises the existing
%      singleton*.
%
%      H = LEDCUBE returns the handle to a new LEDCUBE or the handle to
%      the existing singleton*.
%
%      LEDCUBE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEDCUBE.M with the given input arguments.
%
%      LEDCUBE('Property','Value',...) creates a new LEDCUBE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ledCube_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ledCube_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ledCube

% Last Modified by GUIDE v2.5 03-Oct-2018 13:19:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ledCube_OpeningFcn, ...
                   'gui_OutputFcn',  @ledCube_OutputFcn, ...
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


% --- Executes just before ledCube is made visible.
function ledCube_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ledCube (see VARARGIN)

% Choose default command line output for ledCube
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ledCube wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ledCube_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in size.
function size_Callback(hObject, eventdata, handles)
% hObject    handle to size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns size contents as cell array
%        contents{get(hObject,'Value')} returns selected item from size


% --- Executes during object creation, after setting all properties.
function size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closed=questdlg('Are you sure you want to Exit ?','Exit')
switch closed
    case ('Yes')
        delete(handles.figure1)
    case('No')
end


% --- Executes during object creation, after setting all properties.
function axes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markerfacecolor','w','markersize',6)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor','w','markersize',6)
    end
    end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
if get(handles.togglebutton1,'value')==1
set(handles.text3,'visible','on')
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
 
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
x=1:8;z=1;y=1;
    cla
    plot3(x,y,z,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
elseif get(handles.togglebutton1,'value')==0
    set(handles.text3,'visible','off')
cla
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
x=1:8;z=1;y=1;
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
end
axes(handles.axes)


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2
if get(handles.togglebutton2,'value')==1
    set(handles.text4,'visible','on')
elseif get(handles.togglebutton2,'value')==0
       set(handles.text4,'visible','off')
end
while get(handles.togglebutton2,'value')~=0

cla
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end

x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    pause(0.3)
  cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markerfacecolor','w','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor','w','markersize',sizeled)
    end
 end
 pause(0.3)
end

axes(handles.axes)


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3
while get(handles.togglebutton3,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end

x=1:8;y=1,z=1;
plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
   for z0=8:-2:2;
       z1=z0-1;
       x8=2:2:6;
    for y4=1:3:8
    plot3(x8,y4,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
   pause(0.2)
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
       end
    x7=1:2:8;
for y0=1:2:8
    plot3(x7,y0,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    pause(0.2)
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
end
axes(handles.axes)
 
 


% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4

while get(handles.togglebutton4,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
cla
x=1:8;y=1,z=1;
plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
   for z0=8:-2:2;
       z1=z0-1;
       x8=1:3:8;
    for y4=1:3:8
    plot3(x8,y4,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x8,z0,y4,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y4,z0,x8,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
   pause(0.01)
   cla
       for k=8:-1:1
    for m=8:-1:1
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
       end
       hold on
    x7=1:2:8;
for y0=1:2:8
    plot3(x7,y0,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x7,z1,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,z1,x7,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
 
end
    pause(0.01)
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
 hold on
   for z0=2:2:8;
       z1=z0-1;
       x8=1:3:8;
    for y4=1:3:8
    plot3(x8,y4,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x8,z0,y4,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y4,z0,x8,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
   pause(0.001)
   cla
       for k=8:-1:1
    for m=8:-1:1
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
       end
       hold on
    x7=1:2:8;
for y0=1:2:8
    plot3(x7,y0,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x7,z1,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,z1,x7,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
 
end
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
end
axes(handles.axes)
 


% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton5
if get(handles.togglebutton5,'value')==1
    set(handles.text5,'visible','on')
elseif get(handles.togglebutton5,'value')==0
       set(handles.text5,'visible','off')
end
while get(handles.togglebutton5,'value')~=0
    cla
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x1=1:4;
    for j=1:4
        z0=j;
    for i=1:4
        y0=i;
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
  pause(0.3)
  
  if get(handles.togglebutton5,'value')==1
    cla
      x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
  end
  pause(0.3)
    
  if get(handles.togglebutton5,'value')~=0
    cla
      if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=1:4
        z0=j;
    for i=5:8
        y0=i;
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
  end
   pause(0.3)
  
   if get(handles.togglebutton5,'value')==1
        cla
    x3=5:8;
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=5:8
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
   pause(0.3)

   if get(handles.togglebutton5,'value')~=0
       cla
  x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x2=5:8;
    for j=1:4
        z0=j;
    for i=1:4
        y0=i;
    plot3(x2,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
   end
    pause(0.3)
   if get(handles.togglebutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x2,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
     pause(0.3)
   if get(handles.togglebutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=1:4
        z0=j;
    for i=5:8
        y0=i;
    plot3(x2,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
    pause(0.3)
   if get(handles.togglebutton5,'value')~=0
       cla
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
  x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x3=1:4;
    for j=5:8
        z0=j;
    for i=5:8
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
   end
   pause(0.3)
   if get(handles.togglebutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
    pause(0.3)
   if get(handles.togglebutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=1:4
        z0=j;
    for i=5:8
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
   pause(0.3)
   if get(handles.togglebutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
     pause(0.3)
   if get(handles.togglebutton5,'value')~=0
       cla
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
end
axes(handles.axes)
 


% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton6
if get(handles.togglebutton6,'value')==1
    set(handles.text6,'visible','on')
elseif get(handles.togglebutton6,'value')==0
       set(handles.text6,'visible','off')
end 
while get(handles.togglebutton6,'value')==1
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
 switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
 cla
for i=1:4
n=2^i;
[x y z]=sphere(n);
plot3(x,y,z,'--wO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
pause(0.3)
end
pause(0.5)
 end
axes(handles.axes)
% --- Executes on button press in togglebutton7.
function togglebutton7_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton7
while get(handles.togglebutton7,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    for y0=1:8 
    for j=1:8
        z0=j;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
   %*********************************
   if get(handles.togglebutton7,'value')~=0
   if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
    for z0=1:8 
    for j=1:8
        y0=j;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
   else
   end
    %***************************
    if get(handles.togglebutton7,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=1:8 
    for y0=1:8
for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
end
axes(handles.axes)


% --- Executes on button press in togglebutton8.
function togglebutton8_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton8
while get(handles.togglebutton8,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
cla
 x=1:8;z4=1;y4=1;
    plot3(x,y4,z4,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z=1:8
    for y=1:8
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end

for z0=8:-1:1
        x0=8;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
end
    for x0=8:-1:1
        z0=1;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
        for z0=1:8
        x0=1;
       
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
  for x0=1:8
        z0=8;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
  end
    pause(0.3)
    if get(handles.togglebutton8,'value')~=0
    cla
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z4=1;y4=1;
    plot3(x,y4,z4,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z=1:8
    for y=1:8
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
 for z0=8:-1:1 
        x0=8;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,z0,x0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
end
    for x0=8:-1:1
        z0=1;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(z0,x0,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
    end
  pause(0.3)
  if get(handles.togglebutton8,'value')==1
    cla
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z4=1;y4=1;
    plot3(x,y4,z4,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z=1:8
    for y=1:8
    plot3(y,z,x,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
 for z0=8:-1:1 
        x0=8;
    for y0=8:-1:1 
    plot3(x0,z0,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(z0,y0,x0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
end
    for x0=8:-1:1
        z0=1;
    for y0=8:-1:1 
    plot3(z0,y0,x0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,x0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
  end
end
axes(handles.axes)


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
if get(handles.radiobutton5,'value')==1
    set(handles.radiobutton6,'value',0)
    for i=1:11
        handles.H(i)=eval(['handles.togglebutton' num2str(i)])
    end
    set(handles.H,'visible','off') 
end
while get(handles.radiobutton5,'value')==1
   if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end

x=1:8;y=1,z=1;
plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
   for z0=8:-2:2;
       z1=z0-1;
       x8=2:2:6;
    for y4=1:3:8
    plot3(x8,y4,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
   pause(0.2)
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
       end
    x7=1:2:8;
for y0=1:2:8
    plot3(x7,y0,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    pause(0.2)
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
   
    %##################
    if get(handles.radiobutton5,'value')==1
  
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    for y0=1:8 
    for j=1:8
        z0=j;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
   %*********************************
   if get(handles.radiobutton5,'value')~=0
   if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
    for z0=1:8 
    for j=1:8
        y0=j;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
   else
   end
    %***************************
    if get(handles.radiobutton5,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=1:8 
    for y0=1:8
for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
    end
      %###############
      if get(handles.radiobutton5,'value')==1
    cla
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x1=1:4;
    for j=1:4
        z0=j;
    for i=1:4
        y0=i;
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
  pause(0.3)
  
  if get(handles.togglebutton5,'value')==1
    cla
      x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
  end
  pause(0.3)
    
  if get(handles.radiobutton5,'value')~=0
    cla
      if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=1:4
        z0=j;
    for i=5:8
        y0=i;
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
  end
   pause(0.3)
  
   if get(handles.radiobutton5,'value')==1
        cla
    x3=5:8;
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=5:8
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
   pause(0.3)

   if get(handles.radiobutton5,'value')~=0
       cla
  x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x2=5:8;
    for j=1:4
        z0=j;
    for i=1:4
        y0=i;
    plot3(x2,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
   end
    pause(0.3)
   if get(handles.radiobutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x2,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
     pause(0.3)
   if get(handles.radiobutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=1:4
        z0=j;
    for i=5:8
        y0=i;
    plot3(x2,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
    pause(0.3)
   if get(handles.radiobutton5,'value')~=0
       cla
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
  x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x3=1:4;
    for j=5:8
        z0=j;
    for i=5:8
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
   end
   pause(0.3)
   if get(handles.radiobutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
    pause(0.3)
   if get(handles.radiobutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=1:4
        z0=j;
    for i=5:8
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
   pause(0.3)
   if get(handles.radiobutton5,'value')~=0
       cla
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
  for j=5:8
        z0=j;
    for i=1:4
        y0=i;
    plot3(x3,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
  end
   end
     pause(0.3)
   if get(handles.radiobutton5,'value')~=0
       cla
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
      end
%########################
  if get(handles.radiobutton5,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
cla
 x=1:8;z4=1;y4=1;
    plot3(x,y4,z4,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z=1:8
    for y=1:8
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end

for z0=8:-1:1
        x0=8;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
end
    for x0=8:-1:1
        z0=1;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
        for z0=1:8
        x0=1;
       
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
  for x0=1:8
        z0=8;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
  end
    pause(0.3)
    if get(handles.radiobutton5,'value')~=0
    cla
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z4=1;y4=1;
    plot3(x,y4,z4,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z=1:8
    for y=1:8
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
 for z0=8:-1:1 
        x0=8;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,z0,x0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
end
    for x0=8:-1:1
        z0=1;
    for y0=8:-1:1 
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(z0,x0,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
    end
  pause(0.3)
  if get(handles.radiobutton5,'value')==1
    cla
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
    x=1:8;z4=1;y4=1;
    plot3(x,y4,z4,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z=1:8
    for y=1:8
    plot3(y,z,x,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
 for z0=8:-1:1 
        x0=8;
    for y0=8:-1:1 
    plot3(x0,z0,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(z0,y0,x0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
end
    for x0=8:-1:1
        z0=1;
    for y0=8:-1:1 
    plot3(z0,y0,x0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,x0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.2)
    end
  end
  end
%######################
if get(handles.radiobutton5,'value')==1
for e=1:4
    cla
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end

x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    pause(0.3)
  cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markerfacecolor','w','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markerfacecolor','w','markersize',sizeled)
    end
 end
 pause(0.3)
end
end
%###########################
if get(handles.radiobutton5,'value')==1
    for w=1:3
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z0=1:8
    for y0=1:8
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1:2:7;
    y1=8;
    for y0=1:8
        x1=x0+1;
    for j=1:8
        z0=j;
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x1,y1,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    end
end
if get(handles.radiobutton5,'value')==1
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
cla
x=1:8;y=1,z=1;
plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
   for z0=8:-2:2;
       z1=z0-1;
       x8=1:3:8;
    for y4=1:3:8
    plot3(x8,y4,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x8,z0,y4,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y4,z0,x8,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
   pause(0.01)
   cla
       for k=8:-1:1
    for m=8:-1:1
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
       end
       hold on
    x7=1:2:8;
for y0=1:2:8
    plot3(x7,y0,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x7,z1,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,z1,x7,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
 
end
    pause(0.01)
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
 hold on
   for z0=2:2:8;
       z1=z0-1;
       x8=1:3:8;
    for y4=1:3:8
    plot3(x8,y4,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x8,z0,y4,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y4,z0,x8,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
   pause(0.001)
   cla
       for k=8:-1:1
    for m=8:-1:1
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
       end
       hold on
    x7=1:2:8;
for y0=1:2:8
    plot3(x7,y0,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x7,z1,y0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(y0,z1,x7,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
 
end
   cla
       for k=1:8
    for m=1:8
    plot3(x,m,k,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
   end
end
%#######################
if get(handles.radiobutton5,'value')==1
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
 cla
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z0=1:8
    for y0=1:8
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1
   for y0=1:8
    z0=4;
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    if y0>1 
    y1=y0-1;
    for z1=3:5
    plot3(x0,y1,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    if y0>2
    y2=y0-2;
    for z1=2:6
    plot3(x0,y2,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    if y0>3
    y3=y0-3;
    for z1=1:7
    plot3(x0,y3,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    for b=4:8
     if y0>b
    y4=y0-b;
    for z1=4:5
    plot3(x0,y4,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
     end
    end
    pause(0.03)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
   end
end
%#################
if get(handles.radiobutton5,'value')==1
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1;
    for y0=1:8 
    for j=1:8
        z0=j;
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
   %*****************************
    if get(handles.radiobutton5,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=1:8 
y0=8;
for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
    %********************************
    if get(handles.radiobutton5,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     x0=8;
    for y0=8:-1:1 
    for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
    else
    end
    %********************************
    if get(handles.radiobutton5,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=8:-1:1 
y0=1;
for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
    if get(handles.radiobutton5,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1;
    for y0=1:8 
    for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    for t=2:2:8
    if y0>t
    y1=y0-t
    plot3(x0,y1,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
    end
   %*****************************
    if get(handles.radiobutton5,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=1:8 
y0=8;
for z0=1:8
    for r=2:2:8
    if x0>r
        x1=x0-r
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
  
end

    if get(handles.radiobutton5,'value')~=0
        for o=1:3
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z0=1:8
    for y0=1:8
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1:2:7;
    y1=8;
    for y0=1:8
        x1=x0+1;
    for j=1:8
        z0=j;
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x1,y1,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
 y1=y1-1;
    end
        end
    end
end
axes(handles.axes)

% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
if get(handles.radiobutton6,'value')==1
    set(handles.radiobutton5,'value',0)
    for i=1:11
        handles.H(i)=eval(['handles.togglebutton' num2str(i)])
    end
    set(handles.H,'visible','on')
elseif get(handles.radiobutton6,'value')==0
    for i=1:11
        handles.H(i)=eval(['handles.togglebutton' num2str(i)])
    end
    set(handles.H,'visible','off') 
end

% --- Executes on button press in togglebutton9.
function togglebutton9_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton9
while get(handles.togglebutton9,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
end
 cla
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z0=1:8
    for y0=1:8
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1
   for y0=1:8
    z0=4;
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    if y0>1 
    y1=y0-1;
    for z1=3:5
    plot3(x0,y1,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    if y0>2
    y2=y0-2;
    for z1=2:6
    plot3(x0,y2,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    if y0>3
    y3=y0-3;
    for z1=1:7
    plot3(x0,y3,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    for b=4:8
     if y0>b
    y4=y0-b;
    for z1=4:5
    plot3(x0,y4,z1,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
     end
    end
    pause(0.03)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
   end
end
axes(handles.axes)


% --- Executes on button press in togglebutton10.
function togglebutton10_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton10
while get(handles.togglebutton10,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for z0=1:8
    for y0=1:8
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1:2:7;
    y1=8;
    for y0=1:8
        x1=x0+1;
    for j=1:8
        z0=j;
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x1,y1,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
 y1=y1-1;
    end
end
axes(handles.axes)


% --- Executes on button press in togglebutton11.
function togglebutton11_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton11
while get(handles.togglebutton11,'value')~=0
if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1;
    for y0=1:8 
    for j=1:8
        z0=j;
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
   %*****************************
    if get(handles.togglebutton11,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=1:8 
y0=8;
for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
    %********************************
    if get(handles.togglebutton11,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     x0=8;
    for y0=8:-1:1 
    for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
    else
    end
    %********************************
    if get(handles.togglebutton11,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=8:-1:1 
y0=1;
for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
    if get(handles.togglebutton11,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
x=1:8;z=1;y=1;
    plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
    hold on
    for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
    end
    x0=1;
    for y0=1:8 
    for z0=1:8
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    for t=2:2:8
    if y0>t
    y1=y0-t
    plot3(x0,y1,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
    end
    end
   %*****************************
    if get(handles.togglebutton11,'value')~=0
    if get(handles.b,'value')==1
    color='b';
elseif get(handles.r,'value')==1
    color='r';
elseif get(handles.y,'value')==1
    color='y';
elseif get(handles.g,'value')==1
    color='g';
else 
    color='b';
end
switch get(handles.size,'value')
    case 1
        sizeled=6
    case 2
        sizeled=3
    case 3
        sizeled=4
    case 4
        sizeled=5
    case 5
        sizeled=6
    case 6
        sizeled=7
    case 7
        sizeled=8
    case 8
        sizeled=9
 end
     for x0=1:8 
y0=8;
for z0=1:8
    for r=2:2:8
    if x0>r
        x1=x0-r
    plot3(x0,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    plot3(x1,y0,z0,'-bO','markeredgecolor','k','markerfacecolor',color,'markersize',sizeled)
    end
    end
    end
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
     end
    else
    end
    %********************************
    
    pause(0.05)
    cla
 plot3(x,y,z,'-bO','markeredgecolor','k','markersize',sizeled)
hold on
 for j=1:8
        z0=j;
    for i=1:8
        y0=i;
    plot3(x,y0,z0,'-bO','markeredgecolor','k','markersize',sizeled)
    end
 end
end
axes(handles.axes)


% --- Executes during object deletion, before destroying properties.
function togglebutton1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
