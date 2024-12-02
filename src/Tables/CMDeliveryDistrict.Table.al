table 50182 "CM Delivery District"
{
    DataClassification = CustomerContent;
    Caption = 'Delivery District';

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Delivery Code';
            ToolTip = 'Delivery Code';

        }
        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Delivery Description';
            ToolTip = 'Delivery Description';
        }
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}