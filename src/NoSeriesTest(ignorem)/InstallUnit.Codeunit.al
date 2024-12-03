codeunit 50180 InstallUnit
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        NoSeries: Record "No. Series";
        NoSeriesLine: Record "No. Series Line";
    begin
        SetupNoSeries('V', 'Vehicle Nos.', NoSeries, NoSeriesLine);
        UpdateSalesReceivableSetupVehicle('V');
    end;

    local procedure SetupNoSeries(Code: Code[20]; Description: Text[50]; var NoSeries: Record "No. Series"; var NoSeriesLine: Record "No. Series Line")
    begin
        if not NoSeries.Get(Code) then begin
            InitializeNoSeries(NoSeries, Code, Description);
            InitializeNoSeriesLine(NoSeriesLine, NoSeries.Code);
        end;
    end;

    local procedure InitializeNoSeries(var NoSeries: Record "No. Series"; Code: Code[20]; Description: Text[50])
    begin
        NoSeries.Code := Code;
        NoSeries.Description := Description;
        NoSeries."Default Nos." := true;
        NoSeries.Insert(true);
    end;

    local procedure InitializeNoSeriesLine(var NoSeriesLine: Record "No. Series Line"; SeriesCode: Code[20])
    begin
        NoSeriesLine."Series Code" := SeriesCode;
        NoSeriesLine."Starting No." := Format(SeriesCode) + '000001';
        NoSeriesLine."Increment-by No." := 1;
        NoSeriesLine.Insert(true);
    end;

    local procedure UpdateSalesReceivableSetupVehicle(NoSeriesCode: Code[20])
    var
        SalesReceivables: Record "Sales & Receivables Setup";
    begin
        SalesReceivables.Get();
        //For cow table
        SalesReceivables."Code" := NoSeriesCode;
        SalesReceivables.Modify();
    end;
}