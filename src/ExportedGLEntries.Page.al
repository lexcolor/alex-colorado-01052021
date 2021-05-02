page 50100 "Exported GL Entries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Exported GL Entries";

    layout
    {
        area(Content)
        {
            repeater(Datos)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("G/L Account No."; Rec."G/L Account No.")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                }
                field("VAT Amount"; Rec."VAT Amount")
                {
                    ApplicationArea = All;
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Navigation)
        {
            action("Export Data")
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    xProcess: Codeunit "Export GL Entries";
                begin
                    xProcess.ExportGLEntries();
                    CurrPage.Update();
                end;
            }
            action("Clear Data")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    xProcess: Codeunit "Export GL Entries";
                begin
                    xProcess.ClearExportedEntries();
                    CurrPage.Update();
                end;
            }
        }
    }
}