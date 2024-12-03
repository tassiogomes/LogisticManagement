page 50181 "CM Delivery Districts"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CM Delivery District";
    Editable = false;
    Caption = 'Delivery Districts';
    CardPageId = "CM Delivery District Card";


    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Delivery Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Delivery Description field.', Comment = '%';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

}