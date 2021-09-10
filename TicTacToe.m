function varargout = TicTacToe(varargin)
% TICTACTOE MATLAB code for TicTacToe.fig
%      TICTACTOE, by itself, creates a new TICTACTOE or raises the existing
%      singleton*.
%
%      H = TICTACTOE returns the handle to a new TICTACTOE or the handle to
%      the existing singleton*.
%
%      TICTACTOE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TICTACTOE.M with the given input arguments.
%
%      TICTACTOE('Property','Value',...) creates a new TICTACTOE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TicTacToe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TicTacToe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TicTacToe

% Last Modified by GUIDE v2.5 10-Sep-2021 17:01:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TicTacToe_OpeningFcn, ...
                   'gui_OutputFcn',  @TicTacToe_OutputFcn, ...
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


% --- Executes just before TicTacToe is made visible.
function TicTacToe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TicTacToe (see VARARGIN)
% set(handles.statictextfield,'String',sprintf('%s','Welcome To TicTacToe'));
% set(handles.statictextfield,'String',sprintf('%s','New Game'));



set(handles.pushbutton11,'String',sprintf('%s','---'));
set(handles.pushbutton12,'String',sprintf('%s','---'));
set(handles.pushbutton13,'String',sprintf('%s','---'));
set(handles.pushbutton21,'String',sprintf('%s','---'));
set(handles.pushbutton22,'String',sprintf('%s','---'));
set(handles.pushbutton23,'String',sprintf('%s','---'));
set(handles.pushbutton31,'String',sprintf('%s','---'));
set(handles.pushbutton32,'String',sprintf('%s','---'));
set(handles.pushbutton33,'String',sprintf('%s','---'));


set(handles.pushbutton11,'Enable','off');
set(handles.pushbutton12,'Enable','off');
set(handles.pushbutton13,'Enable','off');
set(handles.pushbutton21,'Enable','off');
set(handles.pushbutton22,'Enable','off');
set(handles.pushbutton23,'Enable','off');
set(handles.pushbutton31,'Enable','off');
set(handles.pushbutton32,'Enable','off');
set(handles.pushbutton33,'Enable','off');


% Choose default command line output for TicTACset(handles.pushbutton33,'String',sprintf('%s','---'))
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TicTacToe wait for user response (see UIRESUME)
% uiwait(handles.TicTacToeFigure);


% --- Outputs from this function are returned to the command line.
function varargout = TicTacToe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton11,'String',sprintf('%s','O'));
    player_move=2;
    matrix(1,1) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton11,'String',sprintf('%s','X'));
    player_move=1;
    matrix(1,1)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton33,'String',sprintf('%s','O'));
    player_move=2;
    matrix(3,3) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton33,'String',sprintf('%s','X'));
    player_move=1;
    matrix(3,3)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton32,'String',sprintf('%s','O'));
    player_move=2;
    matrix(3,2) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton32,'String',sprintf('%s','X'));
    player_move=1;
    matrix(3,2)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton21,'String',sprintf('%s','O'));
    player_move=2;
    matrix(2,1) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton21,'String',sprintf('%s','X'));
    player_move=1;
    matrix(2,1)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton22,'String',sprintf('%s','O'));
    player_move=2;
    matrix(2,2) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton22,'String',sprintf('%s','X'));
    player_move=1;
    matrix(2,2)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton23,'String',sprintf('%s','O'));
    player_move=2;
    matrix(2,3) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton23,'String',sprintf('%s','X'));
    player_move=1;
    matrix(2,3)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton11.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton12,'String',sprintf('%s','O'));
    player_move=2;
    matrix(1,2) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton12,'String',sprintf('%s','X'));
    player_move=1;
    matrix(1,2)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton13,'String',sprintf('%s','O'));
    player_move=2;
    matrix(1,3) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton13,'String',sprintf('%s','X'));
    player_move=1;
    matrix(1,3)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player_move matrix
if player_move==1
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Turn '));
    set(handles.pushbutton31,'String',sprintf('%s','O'));
    player_move=2;
    matrix(3,1) = 1;
    Check(hObject, eventdata, handles);
else
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
    set(handles.pushbutton31,'String',sprintf('%s','X'));
    player_move=1;
    matrix(3,1)=2;
    Check(hObject, eventdata, handles);
end

% --- Executes on button press in pushbuttonNewGame.
function pushbuttonNewGame_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonNewGame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


set(handles.statictextfield,'String',sprintf('%s','Player - 1 Turn '));
set(handles.pushbutton11,'Enable','on');
set(handles.pushbutton12,'Enable','on');
set(handles.pushbutton13,'Enable','on');
set(handles.pushbutton21,'Enable','on');
set(handles.pushbutton22,'Enable','on');
set(handles.pushbutton23,'Enable','on');
set(handles.pushbutton31,'Enable','on');
set(handles.pushbutton32,'Enable','on');
set(handles.pushbutton33,'Enable','on');

set(handles.pushbutton11,'String',sprintf('%s','---'));
set(handles.pushbutton12,'String',sprintf('%s','---'));
set(handles.pushbutton13,'String',sprintf('%s','---'));
set(handles.pushbutton21,'String',sprintf('%s','---'));
set(handles.pushbutton22,'String',sprintf('%s','---'));
set(handles.pushbutton23,'String',sprintf('%s','---'));
set(handles.pushbutton31,'String',sprintf('%s','---'));
set(handles.pushbutton32,'String',sprintf('%s','---'));
set(handles.pushbutton33,'String',sprintf('%s','---'));
global player_move matrix
player_move=1;
 matrix=-1 * ones(3,3);
 
function Check(hObject, eventdata, handles)
% set(handles.statictextfield,'String',sprintf('%s','Access '));
global matrix
if(matrix(1,1)==matrix(1,2)) && (matrix(1,2)==matrix(1,3)) && (matrix(1,3)~=-1)
    result=matrix(1,1);
    set(handles.statictextfield,'String',sprintf('%d',result));
elseif(matrix(2,1)==matrix(2,2)) && (matrix(2,2)==matrix(2,3)) && (matrix(2,3)~=-1)
    result=matrix(2,1);
elseif(matrix(3,1)==matrix(3,2)) && (matrix(3,2)==matrix(3,3)) && (matrix(3,3)~=-1)
    result=matrix(3,1);
    %vertically
elseif(matrix(1,1)==matrix(2,1)) && (matrix(2,1)==matrix(3,1)) && (matrix(2,1)~=-1)
    result=matrix(2,1);
elseif(matrix(1,2)==matrix(2,2)) && (matrix(2,2)==matrix(3,2)) && (matrix(2,2)~=-1)
    result=matrix(2,2);
elseif(matrix(1,3)==matrix(2,3)) && (matrix(2,3)==matrix(3,3)) && (matrix(2,3)~=-1)
    result=matrix(2,3);
    %diagonal
elseif(matrix(1,1)==matrix(2,2)) && (matrix(2,2)==matrix(3,3)) && (matrix(3,3)~=-1)
    result=matrix(1,1);
elseif(matrix(1,3)==matrix(2,2)) && (matrix(2,2)==matrix(3,1)) && (matrix(2,2)~=-1)
    result=matrix(2,2);
elseif ~ismember(matrix,-1)
    result=-1;
else
    result=0;
end
% set(handles.statictextfield,'String',sprintf('%f',result));
if(result==1)
    set(handles.statictextfield,'String',sprintf('%s','Player - 1 Won '));
    TicTacToe_OpeningFcn(hObject, eventdata, handles);
elseif(result==2)
    set(handles.statictextfield,'String',sprintf('%s','Player - 2 Won '));
    TicTacToe_OpeningFcn(hObject, eventdata, handles);
elseif(result==-1)
    set(handles.statictextfield,'String',sprintf('%s','Its a tie'));
    TicTacToe_OpeningFcn(hObject, eventdata, handles);
end


