function simple_gui
    % Create figure
    fig = figure('Name', 'Figure Window', 'Color', 'white');

    % Create editable textbox (edit box)
    editbox = uicontrol('Style', 'edit');
    editbox.String = 'lucas';
    editbox.BackgroundColor = 'white';

    % Center editbox
    editbox.Units = 'normalized';
    editbox.Position = [0.45, 0.55, 0.1, 0.1];

    % Create static textbox for output
    outputbox = uicontrol('Style', 'text');
    outputbox.BackgroundColor = 'white';
    
    % Position outputbox
    outputbox.Units = 'normalized';
    outputbox.Position = [0.45, 0.45, 0.1, 0.1];

    % Set the callback function
    editbox.Callback = @(src,~) editbox_callback(src, outputbox);
end

function editbox_callback(src, outputbox)
    % Print the user's string twice in the outputbox
    str = src.String;
    outputbox.String = sprintf('%s\n%s', str, str);
end
