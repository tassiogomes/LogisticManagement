pageextension 50182 PurchasePayablesSetupPageExt extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Vendor Nos.")
        {
            field("Code"; rec.Code)
            {
                Caption = 'Code';
                ApplicationArea = All;
                ToolTip = 'this is the code setup no series';
            }


        }
    }
}