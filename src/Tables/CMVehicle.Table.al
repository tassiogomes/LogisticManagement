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

}