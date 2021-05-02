codeunit 50100 "Export GL Entries"
{
    trigger OnRun()
    begin

    end;

    procedure ExportGLEntries()
    var
        xGLEntries: Record "G/L Entry";
        xExportdGL: Record "Exported GL Entries";
        xExportdPg: Page "Exported GL Entries";
    begin
        xExportdGL.Reset();
        if xExportdGL.FindSet() then
            xExportdGL.DeleteAll();

        xGLEntries.Reset();
        xGLEntries.SetRange("Bal. Account Type", xGLEntries."Bal. Account Type"::Customer);
        if xGLEntries.FindSet() then
            repeat
                xExportdGL.TransferFields(xGLEntries);
                xExportdGL.Insert(false);
            until xGLEntries.Next() = 0;
    end;

    procedure ClearExportedEntries()
    var
        xExportdGL: record "Exported GL Entries";
    begin
        xExportdGL.Reset();
        if xExportdGL.FindSet() then
            xExportdGL.DeleteAll();
    end;

    var
        myInt: Integer;
}