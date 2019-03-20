" 構文
syn keyword uwscStatement           DIM PUBLIC CONST IF THEN ELSE IFB ELSEIF ENDIF SELECT CASE DEFAULT SELEND FOR NEXT TO IN STEP WHILE WEND REPEAT UNTIL CALL BREAK CONTINUE EXIT PRINT AND OR XOR MOD PROCEDURE FUNCTION FEND RESULT VAR DEF_DLL OPTION THREAD CLASS ENDCLASS THIS GLOBAL WITH ENDWITH TEXTBLOCK ENDTEXTBLOCK HASHTBL TRY ENDTRY EXCEPT FINALLY MODULE ENDMODULE EXITEXIT
" ウィンドウ関連
syn keyword uwscWindowStatement     GETID CLKITEM CHKBTN CTRLWIN SENDSTR GETSTR GETITEM GETSLCTLST SETSLIDER GETSLIDER SCKEY GETALLWIN STATUS MOUSEORG PEEKCOLOR CHKIMG SAVEIMG MUSCUR POSACC
" ダイアログ・表示
syn keyword uwscDialog              INPUT MSGBOX SLCTBOX POPUPMENU BALLOON FUKIDASI STOPFORM LOGPRINT MONITOR
" 制御関数
syn keyword uwscControll            EXEC SLEEP DOSCMD POWERSHELL SOUND GETTIME POFF KINDOFOS CPUUSERATE GETKEYSTATE SETHOTKEY LOCKHARD LOCKHARDEX EVAL SENSOR
" システム関数
syn keyword uwscSystem              GETCTLHND IDTOHND HNDTOID VARTYPE
" ウィンドウ関数低レベル
syn keyword uwscInputControll       MMV BTN KBD ACW
" 文字操作
syn keyword uwscWordProcessor       COPY POS LENGTH CHKNUM VAL REPLACE CHGMOJ TRIM FORMAT CHR ASC ISUNICODE STRCONV TOKEN BETWEENSTR COPYB LENGTHB POSB CHRB ASCB LENGTHS
" 配列操作
syn keyword uwscArray               RESIZE SETCLEAR SHIFTARRAY CALCARRAY SPLIT JOIN SLICE QSORT
" ファイル
syn keyword uwscIO                  FOPEN FGET FPUT FDELLINE FCLOSE DELETEFILE GETDIR DROPFILE
" INIファイル
syn keyword uwscIni                 READINI WRITEINI DELETEINI
" COMオブジェクト
syn keyword uwscCOM                 CREATEOLEOBJ GETACTIVEOLEOBJ GETOLEITEM OLEEVENT COM_ERR_IGN COM_ERR_RET SAFEARRAY
" 音声認識・合成
syn keyword uwscAudio               SPEAK RECOSTATE DICTATE
" IE操作関連
syn keyword uwscIE                  IEGETDATA IESETDATA IEGETSRC IESETSRC IELINK ENCODE DECODE
" フォーム画面
syn keyword uwscForm                CREATEFORM GETFORMDATA SETFORMDATA
" Excel操作関連
syn keyword uwscExcel               XLOPEN XLCLOSE XLACTIVATE XLSHEET XLGETDATA XLSETDATA
" 数学関数
syn keyword uwscMath                RANDOM ABS ZCUT INT CEIL ROUND SQRT POWER EXP LN LOGN SIN COS TAN ARCSIN ARCCOS ARCTAN
"特殊変数
syn keyword uwscSpecial             PARAM_STR[] ALL_WIN_ID[] ALL_ITEM_LIST[] GETDIR_FILES[] ALL_OLE_ITEM[] ALL_IMG_X[] ALL_IMG_Y[] EVENT_PRM[] GET_WIN_DIR GET_SYS_DIR GET_CUR_DIR GET_APPDATA_DIR GET_UWSC_DIR GET_UWSC_NAME GET_UWSC_VER GET_UWSC_PRO G_IMG_X G_IMG_Y G_SCREEN_W G_SCREEN_H G_SCREEN_C G_MOUSE_X G_MOUSE_Y COM_ERR_FLG TRY_ERRMSG TRY_ERRLINE HOTKEY_VK HOTKEY_MOD G_TIME_*(GETTIME関数)
" 定数
syn keyword uwscConstant            TRUE FALSE NULL EMPTY NOTHING ERR_VALUE GET_SLIDER GET_MENU_HND GET_SYSMENU_HND ACTIVATE CLOSE CLOSE2 HIDE SHOW MIN MAX NORMAL TOPMOST NOTOPMOST TOPNOACTV CLICK DOWN UP LEFT RIGHT MIDDLE WHEEL TOUCH F_*(FOPEN/FGET/FPUT関数) XL_*(XLOPEN) CLK_*(CLKITEM) STR_*(GETSTR/SENDSTR) BTN_*(MSGBOX) SLCT_*(SLCTBOX) ITM_*(GETITEM) ST_*(STATUS) CUR_*(MUSCUR) ACC_*(POSACC) P_*(POFF) TGL_*(GETKEYSTATE) GET_*(GETID) SC_*(STRCONV) MOD_*(SETHOTKEY) FOM_*(CREATEFORM/GETFORMDATA) CODE_*(ENCODE) CALC_*(CALCARRAY) IMG_*(CHKIMG/SAVEIMG) SLD_*(GETSLIDER) MON_*(MONITOR) COL_*(PEEKCOLOR) MORG_*(MOUSEORG) LOCK_*(LOCKHARDEX) HASH_*(HASHTBL) VAR_*(VARTYPE) SNSR_*(SENSOR) QSRT_*(QSORT)

" 定義済み仮想キー
" TODO 作成する


syn match   uwscCharacter           "'[^']*'" contains=javaSpecialChar,javaSpecialCharError
syn match   uwscCharacter           "'\\''" contains=javaSpecialChar
syn match   uwscCharacter           "'[^\\]'"
syn match   uwscNumber              "\<\(0[bB][0-1]\+\|0[0-7]*\|0[xX]\x\+\|\d\(\d\|_\d\)*\)[lL]\=\>"
syn match   uwscNumber              "\(\<\d\(\d\|_\d\)*\.\(\d\(\d\|_\d\)*\)\=\|\.\d\(\d\|_\d\)*\)\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\="
syn match   uwscNumber              "\<\d\(\d\|_\d\)*[eE][-+]\=\d\(\d\|_\d\)*[fFdD]\=\>"
syn match   uwscNumber              "\<\d\(\d\|_\d\)*\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\>"
syn match   uwscLineComment         "//.*"


hi def link uwscStatement           Conditional
hi def link uwscWindowStatement     Function
hi def link uwscDialog              Function
hi def link uwscControll            Function
hi def link uwscSystem              Function
hi def link uwscInputControll       Function
hi def link uwscWordProcessor       Function
hi def link uwscArray               Function
hi def link uwscIO                  Function
hi def link uwscIni                 Function
hi def link uwscCOM                 Function
hi def link uwscAudio               Function
hi def link uwscIE                  Function
hi def link uwscForm                Function
hi def link uwscExcel               Function
hi def link uwscMath                Function
hi def link uwscSpecial             Constant
hi def link uwscConstant            Constant
hi def link uwscCharacter           Character
hi def link uwscNumber              Number
hi def link uwscLineComment         Comment


let b:current_syntax = "uws"
