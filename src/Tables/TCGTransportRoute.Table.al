table 50180 "TCG Transport Route"
{
    // 1969
    Caption = 'Transport Route';
    DataClassification = CustomerContent;

    fields
    {
        field(1; TransportRouteId; Code[20])
        {
            Caption = 'Transport Route ID';
            ToolTip = 'Specifies the Transport Route Id', Comment = '%1';

            trigger OnValidate()
            var
                Regex: Codeunit Regex;
                FormatCodeErr: Label 'The Transport Route ID must be exactly 4 characters: 2 uppercase letters followed by 2 digits.';
            begin
                if not Regex.IsMatch(TransportRouteId, '^[A-Z]{2}\d{2}$') then
                    Error(FormatCodeErr);
            end;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the description of Transport Route', Comment = '%!';
        }
    }
    keys
    {
        key(PK; TransportRouteId)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
    end;

    trigger OnRename()
    begin
    end;
}