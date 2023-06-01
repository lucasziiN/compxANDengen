function simple_gui
    % Create figure
    fig = figure('Name', 'Figure Window', 'Color', 'white');

    % Create textbox
    textbox = uicontrol('Style', 'text');
    textbox.String = 'lucas';
    textbox.BackgroundColor = 'white';

    % Center textbox
    textbox.Units = 'normalized';
    textbox.Position = [0.45, 0.45, 0.1, 0.1];
end
