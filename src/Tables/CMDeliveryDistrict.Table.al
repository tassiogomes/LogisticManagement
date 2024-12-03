table 50182 "CM Delivery District"
{
    DataClassification = CustomerContent;
    Caption = 'Delivery District';
    LookupPageId = "CM Delivery District Card";


    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Delivery Code';
            ToolTip = 'Delivery Code';

            trigger OnValidate()
            var
                TempDistrict: Record "CM Delivery District" temporary;
                NoOfDuplicateItems: Integer;
                NoDuplicateItemsMsgLbl: Label 'There are no duplicate items.';
                NoOfDuplicateItemsDeletedMsgLbl: Label '%1 item(s) were deleted.', Comment = '%1 = No of Items';

            begin
                if Rec.FindSet() then
                    repeat
                        TempDistrict.Reset();
                        TempDistrict.SetRange(Description, Rec.Description); //Filter duplicates
                        if not TempDistrict.IsEmpty then begin
                            Rec.Get(Rec."Code");
                            Rec.Delete(true);
                            NoOfDuplicateItems := NoOfDuplicateItems + 1;
                        end else begin
                            TempDistrict.Init();
                            TempDistrict := Rec;
                            TempDistrict.Insert(); //Insert the record to the temporary table, the first inserted record will be retained
                        end;
                    until Rec.Next() = 0;
                if NoOfDuplicateItems = 0 then
                    Message(NoDuplicateItemsMsgLbl)
                else
                    Message(NoOfDuplicateItemsDeletedMsgLbl, NoOfDuplicateItems);
            end;

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