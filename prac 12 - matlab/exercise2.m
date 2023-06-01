function Prac12_Ex2
%Prac12_Ex2 has three pushbuttons, to make the form bigger and smaller 
%  and change the text colour of the Hello World message
%Format: Prac12_Ex2

% string to display on form
str = "Hello Lucas";

%Create the GUI but make it invisible for now while it is being initialized
f = figure('Visible', 'off', ...
    'Color', 'white', ...
    'Units', 'Normalized', 'Position', [.25 .5 .4 .2]);
f.Name = 'Week 12 Exercise 2'; 
movegui(f,'center')

% Create a textbox to display "Hello World"
hstring = uicontrol('Style', 'text', 'BackgroundColor', 'white', ...
        'Units', 'Normalized', 'Position', [.3 .7 .4 .2],  ... 
        'String', str, ...
        'ForegroundColor', 'Green', 'FontSize', 30);

% Create a pushbutton that says "Bigger"
hbutton1 = uicontrol('Style', 'pushbutton', ...
    'String', 'Bigger', ...
  'Units', 'Normalized', 'Position', [.3 .5 .4 .2], ...
  'Callback', @callbackbigger);

% Create a pushbutton that says "Smaller"
hbutton2 = uicontrol('Style', 'pushbutton', ...
    'String', 'Smaller',...
   'Units', 'Normalized', 'Position', [.3 .3 .4 .2], ... 
  'Callback', @callbacksmaller);

% Create a pushbutton that says "Smaller"
hbutton3 = uicontrol('Style', 'pushbutton', ...
    'String', 'Change Colour',...
   'Units', 'Normalized', 'Position', [.3 .1 .4 .2], ... 
  'Callback', @callbackcolour);

   
% Now the GUI is made visible 
f.Visible = 'on';

 % Call back function for bigger button 
 function callbackbigger(hObject, eventdata)
    % callbackbigger is called by the 'Callback' property
    % in the "Bigger" pushbutton
    w = get(f,'Position');
    w(3) = w(3)+0.1;
    w(4) = w(4)+0.1;
    disp(w)
    set(f,'Position',w)
 end

 % Call back function for smaller button 
 function callbacksmaller(hObject, eventdata)
    % callbacksmaller is called by the 'Callback' property
    % in the "Smaller" pushbutton
    w = get(f,'Position');
    w(3) = w(3)-0.1;
    w(4) = w(4)-0.1;
    disp(w)
    set(f,'Position',w)
 end

 % Call back function for smaller button 
 function callbackcolour(hObject, eventdata)
    % callbackcolour is called by the 'Callback' property
    % in the "Change Colour" pushbutton
    r = rand();
    g = rand();
    b = rand();
    set(hstring,'ForegroundColor',[r g b])
 end
end