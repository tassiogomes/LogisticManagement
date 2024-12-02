page 50181 DeliveryDistricts
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = DeliveryDistrict;
    Editable = false;
    Caption = 'Delivery Districts';

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