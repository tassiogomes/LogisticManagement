table 50181 "CM Vehicle"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; VehicleType; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
            Caption = 'Type Code';
        }
        field(2; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
            Caption = 'Vehicle Code';

            trigger OnValidate()
            var
                Vehicle: Record "CM Vehicle";
            begin
                if "Code" < xRec."Code" then
                    if not Vehicle.Get(Rec."Code") then begin
                        SalesSetup.Get();
                        NoSeries.TestManual(SalesSetup."Code");
                        "No. Series" := '';
                    end;
            end;
        }
        field(3; LicenseNumber; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'License Number';
        }
        field(4; MaximumWeight; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Maximum Weight';
        }
        field(5; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Vehicle Description';
            ToolTip = 'Vehicle Description';
        }
        field(6; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; Code, VehicleType)
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

    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeries: Codeunit "No. Series";

}