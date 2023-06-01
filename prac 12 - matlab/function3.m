function rectangle_area_gui
    % Create figure
    fig = figure('Name', 'Rectangle Area Calculator', 'Color', 'white');

    % Create label for length
    lengthLabel = uicontrol('Style', 'text');
    lengthLabel.String = 'Length:';
    lengthLabel.BackgroundColor = 'white';
    lengthLabel.HorizontalAlignment = 'right';
    lengthLabel.Units = 'normalized';
    lengthLabel.Position = [0.2, 0.6, 0.1, 0.1];

    % Create edit box for length
    lengthBox = uicontrol('Style', 'edit');
    lengthBox.String = '0';
    lengthBox.BackgroundColor = 'white';
    lengthBox.Units = 'normalized';
    lengthBox.Position = [0.35, 0.6, 0.1, 0.1];

    % Create label for width
    widthLabel = uicontrol('Style', 'text');
    widthLabel.String = 'Width:';
    widthLabel.BackgroundColor = 'white';
    widthLabel.HorizontalAlignment = 'right';
    widthLabel.Units = 'normalized';
    widthLabel.Position = [0.5, 0.6, 0.1, 0.1];

    % Create edit box for width
    widthBox = uicontrol('Style', 'edit');
    widthBox.String = '0';
    widthBox.BackgroundColor = 'white';
    widthBox.Units = 'normalized';
    widthBox.Position = [0.65, 0.6, 0.1, 0.1];

    % Create label for result
    resultLabel = uicontrol('Style', 'text');
    resultLabel.String = 'Area:';
    resultLabel.BackgroundColor = 'white';
    resultLabel.HorizontalAlignment = 'right';
    resultLabel.Units = 'normalized';
    resultLabel.Position = [0.35, 0.45, 0.1, 0.1];

    % Create static text box for result
    resultBox = uicontrol('Style', 'text');
    resultBox.BackgroundColor = 'white';
    resultBox.Units = 'normalized';
    resultBox.Position = [0.5, 0.45, 0.1, 0.1];

    % Create push button for calculation
    pushButton = uicontrol('Style', 'pushbutton');
    pushButton.String = 'Calculate Area';
    pushButton.Units = 'normalized';
    pushButton.Position = [0.45, 0.3, 0.1, 0.1];
    
    % Set the callback function
    pushButton.Callback = @(~,~) calculate_area(lengthBox, widthBox, resultBox);
end

function calculate_area(lengthBox, widthBox, resultBox)
    % Calculate the area of the rectangle
    length = str2double(lengthBox.String);
    width = str2double(widthBox.String);
    area = length * width;
    
    % Print the result in the resultBox
    resultBox.String = num2str(area);
end
