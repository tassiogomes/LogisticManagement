pageextension 50180 "TCG Vendors" extends "Vendor Card"
{
    layout
    {
        addlast("Address & Contact")
        {
            field(DesiredDeliveryDistrict; Rec.DesiredDeliveryDistrict)
            {
                ApplicationArea = All;
                Caption = 'Desired Delivery District';
                ToolTip = 'Specifies the Desired Delivery District', Comment = '%1';
            }
            field(DesiredDeliveryRoute; Rec.DesiredDeliveryRoute)
            {
                ApplicationArea = All;
                Caption = 'Desired Delivery Route';
                ToolTip = 'Specifies the Desired Delivery Route', Comment = '%1';
            }
        }
    }
}
