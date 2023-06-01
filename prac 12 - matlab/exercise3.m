function currency_converter
    % Create figure
    fig = figure('Name', 'Currency Converter: USD to NZD', 'Color', 'white');

    % Create label for USD input
    usdLabel = uicontrol('Style', 'text');
    usdLabel.String = 'USD:';
    usdLabel.BackgroundColor = 'white';
    usdLabel.HorizontalAlignment = 'right';
    usdLabel.Units = 'normalized';
    usdLabel.Position = [0.2, 0.6, 0.1, 0.1];

    % Create edit box for USD input
    usdBox = uicontrol('Style', 'edit');
    usdBox.String = '0';
    usdBox.BackgroundColor = 'white';
    usdBox.Units = 'normalized';
    usdBox.Position = [0.35, 0.6, 0.1, 0.1];

    % Create label for result
    resultLabel = uicontrol('Style', 'text');
    resultLabel.String = 'NZD:';
    resultLabel.BackgroundColor = 'white';
    resultLabel.HorizontalAlignment = 'right';
    resultLabel.Units = 'normalized';
    resultLabel.Position = [0.5, 0.6, 0.1, 0.1];

    % Create static text box for result
    resultBox = uicontrol('Style', 'text');
    resultBox.BackgroundColor = 'white';
    resultBox.Units = 'normalized';
    resultBox.Position = [0.65, 0.6, 0.1, 0.1];

    % Create push button for conversion
    convertButton = uicontrol('Style', 'pushbutton');
    convertButton.String = 'Convert';
    convertButton.Units = 'normalized';
    convertButton.Position = [0.45, 0.45, 0.1, 0.1];
    
    % Set the callback function
    convertButton.Callback = @(~,~) convert_currency(usdBox, resultBox);
end

function convert_currency(usdBox, resultBox)
    % Convert USD to NZD
    usd = str2double(usdBox.String);
    nzd = usd * 1.40;  % Conversion rate
    
    % Print the result in the resultBox
    resultBox.String = num2str(nzd);
end
