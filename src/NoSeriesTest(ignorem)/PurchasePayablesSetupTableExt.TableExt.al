tableextension 50183 PurchasePayablesSetupTableExt extends "Purchases & Payables Setup"
{
    fields
    {
        field(50180; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
            Caption = 'Vehicle Code';
        }
    }
}