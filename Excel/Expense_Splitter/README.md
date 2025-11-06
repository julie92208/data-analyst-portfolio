 # Expense Splitter (Google Sheets + Apps Script)

## Overview
This project automates expense sharing between two people (e.g., couples, friends, roommates) using **Google Sheets** and **Apps Script**.  
It calculates who owes who, keeps a history log, and provides a one-click “Settle Up” button with confirmation prompts.

## Features
- Automatic calculation of shared expenses
- “Settle Up” button triggers:
  - Confirmation popup
  - History log entry
  - Data clearing for next use
- Simple, visual UI for users

## Technical Highlights
| Category | Details |
|-----------|----------|
| Tools | Google Sheets, Apps Script |
| Logic | `IF`, `SUMIF`, `ARRAYFORMULA`, conditional formatting |
| Automation | Apps Script UI alerts, `getRange()`, `appendRow()` |
| Data Management | Auto-logging of past settlements |

## How It Works
1. Input expenses into the sheet:
   - Date, Item, Amount, Who Paid?, Ratio
2. Click “Settle Up!”
3. Apps Script will:
   - Summarize totals (`Paid by T`, `Paid by J`)
   - Calculate who should pay whom
   - Save a record in the **History** sheet
   - Clear inputs for the next round

## Apps Script

'''function myClear() {
  var ui = SpreadsheetApp.getUi();
  var response = ui.alert(
    '確定結清嗎阿寶？',
    '這個動作會清空 A2:E30 的所有內容，並將結算紀錄存入 History 表。',
    ui.ButtonSet.YES_NO
  );

  if (response == ui.Button.YES) {
    var ss = SpreadsheetApp.getActiveSpreadsheet();
    var sheet = ss.getActiveSheet();
    var historySheet = ss.getSheetByName('History');

    if (!historySheet) {
      historySheet = ss.insertSheet('History');
      historySheet.appendRow(['Date', 'Summary']);
    }

    var resultCell = sheet.getRange('H5:I5').getValue();

    var date = new Date();
    historySheet.appendRow([date, resultCell]);

    sheet.getRange('A2:E30').clearContent();

    ui.alert('已結清並將紀錄保存至 History！');
  } else {
    ui.alert('取消囉～');
  }
}'''

