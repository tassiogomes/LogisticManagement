table 50181 "TCG Delivery District"
{
    // 1967
    Caption = 'Delivery District';
    DataClassification = CustomerContent;

    fields
    {
        field(1; DeliveryDistrictId; Code[20])
        {
            Caption = 'Delivery District Id';
            ToolTip = 'Specifies the value of Delivery District ID field.', Comment = '%1';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the value of Description field', Comment = '%1';
        }
    }

    keys
    {
        key(PK; DeliveryDistrictId)
        {
            Clustered = true;
        }
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