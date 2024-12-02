tableextension 50180 "TCG Vendor" extends Vendor
{
    fields
    {
        field(50180; DesiredDeliveryDistrict; Code[20])
        {
            TableRelation = "TCG Delivery District";
            Caption = 'Desired Delivery District';
            ToolTip = 'Specifies the Desired Delivery District', Comment= '%1';
        }
        field(50181; DesiredDeliveryRoute; Code[20])
        {
            TableRelation = "TCG Transport Route";
            Caption = 'Desired Delivery Route';
            ToolTip = 'Specifies the Desired Delivery Route', Comment= '%1';
        }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    
}