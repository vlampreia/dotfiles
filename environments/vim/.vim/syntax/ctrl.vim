" Vim syntax file
" Language: PVSS CTRL script
" Maintainer: Victor Lampreia
" Latest Revision: 23 October 2015

if exists("b:current_syntax")
  finish
endif

syn keyword ctrlStatements    synchronized break continue return
syn keyword ctrlConditionals  if switch else
syn keyword ctrlRepeats       for while do
syn keyword ctrlLabels        case default
syn keyword ctrlOperators     strlen mappinglen dynlen sizeof + - * / == != < > <= >=
syn keyword ctrlExceptions    try catch finally throw

syn keyword ctrlVisibility    private protected public global

syn keyword ctrlStorageClass  const
syn keyword ctrlFunctions     abs access acGetRefACType acos activateMode addGlobal addGroupPVSS addUserPVSS addUserToGroupPVSS addSymbol afterLogin alertConnect alertDisconnect alertGet alertGetPeriod alertSet alertSetTimed alertSetTimedWait alertSetWait asin atan atan2 
syn keyword ctrlFunctions     baseName beep bitmapEditor blobAppendValue blobGetValue blobRead bloblen blobSetValue blobWrite blobZero byteSizeToString  callFunction
syn keyword ctrlFunctions     captureScreen ceil checkPassword checkPattern checkQuery checkScript checkStringFormat ChildPanelOn ChildPanelOnCentral ChildPanelOnCentralModal ChildPanelOnCentralModalReturn ChildPanelOnCentralReturn ChildPanelOnModal ChildPanelOnModalReturn ChildPanelOnModule ChildPanelOnModuleCheckPos ChildPanelOnModuleModal ChildPanelOnModuleModalReturn ChildPanelOnModuleReturn ChildPanelOnParent ChildPanelOnParentModal ChildPanelOnParentModalReturn ChildPanelOnParentReturn ChildPanelOnRelativ ChildPanelOnRelativModal ChildPanelOnRelativModalReturn ChildPanelOnRelativReturn ChildPanelOnReturn ChildPanelReturnValue closeDialog closeProgressBar colorEditor commonConfirm confirmMode connectedShapes convManIdToInt convManIntToName copyAllFiles copyAllFilesRecursive copyFile cos cosh createComObject createPanel crypt cryptoHash  dataHost
syn keyword ctrlFunctions     dataPort day daylightsaving daySecond dbAddNew dbBeginTransaction dbBulkCommand dbCloseConnection dbCloseRecordset dbCommitTransaction dbDelete dbEOF dbExecuteCommand dbFinishCommand dbGetError dbGetField dbGetRecord dbGetResult dbMove dbMoveFirst dbMoveLast dbMoveNext dbMovePrevious dbOpenRecordset dbOpenConnection dbPutField dbRequery dbRollbackTransaction dbSetParameter dbStartCommand dbUpdate deg2rad delay delExt dispatch dirName dollarSubstitute dpActivateAlert dpAliases dpAliasToName dpAttributeType dpChange dpConnect dpConnectUserData dpCopy dpCopyBufferClear dpCopyConfig dpCopyConfigMerge dpCopyConfigMergeBufferClear dpCopyOriginal dpCreate dpDeactivateAlert dpDelete dpDisconnect dpDisconnectUserData dpElementType dpExists dpGet dpGetAlias dpGetAllAliases dpGetAllAttributes dpGetAllComments dpGetAllDescriptions dpGetAllConfigs dpGetAllDetails dpGetAsynch dpGetComment dpGetDescription dpGetDpTypeRefs dpGetFormat dpGetId dpGetName dpGetPeriod dpGetRefsToDpType dpGetStatusBit dpGetUnit dpIsLegalName dpNameCheck dpNames dpQuery dpQueryConnectAll dpQueryConnectSingle dpQueryDisconnect dpSelector dpSelectorSimple dpSet dpSetAlias dpSetComment dpSetDescription dpSetDynErrorCheck dpSetErrorCheck dpSetFormat dpSetTimed dpSetTimedWait dpSetUnit dpSetWait dpSubStr dpTranslate dpTreeSetIcons dpTypeChange dpTypeCreate dpTypeDelete dpTypeGet dpTypeName dpTypeRefName dpTypes dpValToString dpWaitForValue dynAppend dynAvg dynAvgWT dynClear dynContains dynCount dynDynSort dynDynTurn dynInsertAt dynIntersect dynMax dynMin dynPatternMatch dynRemove dynSort dynSortAsc dynSum dynUnique  emRetrieveMail
syn keyword ctrlFunctions     emSendMail enableMenuItem enableSound errorDialog errorText etdbGetAksCodes etdbGetAksSegments evalScript eventHost eventPort execScript exit exp  fabs
syn keyword ctrlFunctions     fclose feof ferror fflush fgets fileEditor fileSelector fileToString fillSelector floor fmod folderSelector fontSelector fopen formatSelector formatTime formatTimeUTC fprintf fprintfPL fprintfUL fputs fread fscanf fscanfPL fscanfUL fseek ftell fwrite  getACount
syn keyword ctrlFunctions     getActiveLang getAIdentifier getAllDpAliases getAllGroupsPVSS getAllOSGroups getAllOSUsers getAllUsersPVSS getBit getCatStr getChildCentralPosition getClipboardText getColorNames getComponentName getConfirmDps getCurrentDomainName getCurrentOSUser getCurrentTime getCursorPosition getDictionary getDollarParams getDollarParamsFromPanel getDollarValue getDynAnyType... getenv getErrorCataloge getErrorCode getErrorDpName getErrorManId getErrorCatalog getErrorPriority getErrorStackTrace getErrorText getErrorType getErrorUserId getExt getFileCryptoHash getFileModificationTime getFileNames getFileNamesRev getFileSize getGediNames getGlobalLangId getGlobals getGlobalType getGroupDataPVSS getGroupsOfUserPVSS getHostByAddr getHostByName getHostname getInitialZoomFactor getKerberosSecurity getKeyState getLangIdx getLastError getLastException getLicenseOption getLocale getManIdFromInt getMetaLang getMultiValue getNoOfLangs getOSDomainName getOSGroups getOSGroupID getOSGroupInfo getOSGroupName getOSGroupUsers getOSUserGroups getOSUserID getOSUserInfo getOSUserName getOSUsers getPanelPreview getPanelSize getParaNames getPath getPrimaryScreen getPrinterNames getReduDp getRemoteSystemHosts getScaleStyle getScreenCount getScreenSize getScript getShape getShapes getStackTrace getSystemId getSystemName getSystemNames getThreadId getType getTypeName getUserDataPVSS getUiFunctionList getUiStyle getUserDataByNamePVSS getUserId getUserName getUserPermission getUserPermissionForArea getUsersInGroupPVSS getValue getVisionNames getWindowsEvents getYoungerFiles getZoomFactor getZoomRange globalExists groupCreate gunzip gzip gzread gzwrite  HOOK_aes_acknowledgeTableFunction
syn keyword ctrlFunctions     HOOK_ep_acknowledgeTableFunction HOOK_isAckable hour html_ref httpConnect httpDisconnect httpParseDate httpServer httpSetMaxAge httpSetMaxContentLength  imageToFile
syn keyword ctrlFunctions     invokeMethod isAckable isAlertAttribute isAnswer isConnActive isConnOpen isDbgFlag isdir isDirectory isDistributed isDollarDefined isDpTypeStruct isDpTypeSumAlert isEvConnOpen isfile isFunctionDefined isInBrowser isinf isModeExtended isModuleOpen isMotif isnan isPanelOpen isProgressBarOpen isReduDp isRedundant isRefresh isRemoteSystemRedundant isSplitModeActive isTableAckable  langEditor
syn keyword ctrlFunctions     LayerOff LayerOffPanel LayerOffPanelInModule LayerOn LayerOnPanel LayerOnPanelInModule ldexp lineSelector log log10 LoginDialog LogoutDialog lowerModule  makeATime
syn keyword ctrlFunctions     makeDynAnytype makeDynATime makeDynBit32 makeDynBit64 makeDynBool makeDynChar makeDynFloat makeDynInt makeDynLong makeDynMixed makeDynString makeDynTime makeDynUInt makeDynULong makeError makeTime mappingClear mappingGetKey mappingGetValue mappingHasKey mappingKeys mappingRemove maxFLOAT maxINT maxLONG maxUINT maxULONG mergeDictionary milliSecond minFLOAT minINT minLONG minUINT minULONG minute mkdir moduleAddAction moduleAddDockModule moduleAddMenu moduleAddSubMenu moduleAddToolBar moduleGetAction moduleHide moduleMinimize moduleOff moduleOn ModuleOn ModuleOnWithPanel moduleOriginalSize moduleRaise moduleRestore moduleSetAction moduleShow month moveFile moveModule mpGetMasterDpeForDpe mpHasDpeConfig msc_createFav msc_FavMenu msc_movePanel msc_moveToNextScreen msc_moveToPrevScreen myDisplayName myManId myManNum myManType myModuleName myPanelName myReduHost myReduHostNum myUiDpName myUiNumber myWindowId
syn keyword ctrlFunctions     nameCheck numberMatch
syn keyword ctrlFunctions     OLEColor OLEFont OLEPicture OLEPicturePrint OLEPictureSave OPCEnumQuery openAES openDialog openProgressBar openTrend openTrendCurves  paCfgDeleteValue
syn keyword ctrlFunctions     paCfgInsertValue paCfgReadValue paCfgReadValueDflt paCfgReadValueList paIsRunAsAdmin panelFileName panelOff PanelOff PanelOffModule PanelOffPanel PanelOffReturn panelPosition panelSelector panelSize panelZoomIn panelZoomOut panningMode PasswordDialog patternMatch period popupMenu popupMenuXY popupMessage pow printPanel printRootPanel printTable pt_buildModuleName pt_moduleNumber pt_panelOn ptms_LoadOneBasePanel pvAddColumn pvAddSeparator pvConnect pvRefreshNode pvSetItemText PVSSColor PVSSFont
syn keyword ctrlFunctions     quarter
syn keyword ctrlFunctions     rad2deg rand readDictionary readSMS recodeFileName reduActive reduSetActive reduSetInactive reduSetPreferred reduSetSplitOff reduSetSplitOn reduSwitchDist reduSwitchDriver registerDbgFlag releaseComObject remove removeDoneCB removeGlobal removeGroupPVSS removeUserFromGroupPVSS removeSymbol removeUserPVSS rename requestFileList restorePanel rewind rootPanel RootPanelOn RootPanelOnModule rmdir  scanTimeUTC
syn keyword ctrlFunctions     scriptEditor second seGetCursorPos seGetLine seInsertLine sendSMS seRemoveLine seSetCursorPos seSetLine setACount setAIdentifier setBit setClipboardText setClutteringLimits setDollarParams setFileModificationTime setGroupNamePVSS setInputFocus setLangString setMultiValue setPanelSize setPattern setPeriod setQueryRDBDirect setScaleStyle setScript setTime setTrace setUserEnabledPVSS setUserId setUserNamePVSS setUserNameSSO setUserOsIdPVSS setValue setWindowTitle shapeExists showProgressBar sin sinh snmpMIBBrowserGetAdditionalInfos snmpMIBBrowserGetHierarchyNames sprintf sprintfPL sprintfUL sqrt srand sscanf sscanfPL sscanfUL startPanelRefConstruct startSound startThread stayOnTop std_help std_miniHelp stopSound stopThread strchange strexpand stringEditor strformat strltrim strpos strreplace strrtrim strsplit strtok strtolower strtoupper substr switchCtrlConnectionsToReplica switchCtrlConnectionToReplica switchUiConnectionsToReplica switchUiConnectionToReplica switchLang SwitchLayer SwitchLayerPanel SwitchLayerPanelInModule system  tan
syn keyword ctrlFunctions     tanh tcpClose tcpOpen tcpRead tcpShutdownOutput tcpWrite textEditor throwError timeFromGMT timedFunc timedFuncEvents timedFuncStatus timedFuncConflicts titleBar tmpnam trackZoomMode translate  udpClose
syn keyword ctrlFunctions     udpOpen udpRead udpWrite userDefFunc uss_getGenericSetting uss_getSpecificSetting uss_getSpecificUserSetting uss_getUserSettings  v24Close
syn keyword ctrlFunctions     v24Open v24Read v24Write valueEditor verifyOSUser VIDEO_exportGetExportPath VIDEO_exportGetExportQuality VIDEO_exportGetExportSpeed VIDEO_exportGetPlayerPath VIDEO_exportGetVideoDataPath VIDEO_filterKeywordValue VIDEO_get1ModuleName VIDEO_get2ModuleName VIDEO_getCameraDp VIDEO_getCameraDpes VIDEO_getCameraNumber VIDEO_getDecoderNumber VIDEO_getEncoderNumber VIDEO_getGeneralSettings VIDEO_getMaxPreset VIDEO_getMonitorNumber VIDEO_getSystemName VIDEO_getType VIDEO_getTypes VIDEO_getWidgetActiveDpes VIDEO_getWidgetActiveValues VIDEO_getWidgetIndex VIDEO_getWidgetName VIDEO_getWorkstationDp VIDEO_getWorkstationNum VIDEO_isCameraIP VIDEO_isCameraPTZ VIDEO_isCameraRemoteZoom VIDEO_isHostExportServer VIDEO_objExpOpenObjectExplorer VIDEO_openChildScreen VIDEO_openMainScreen VIDEO_openMessageInfo VIDEO_openMessageInfoAnswer VIDEO_openMessageWarning VIDEO_openNoPermission VIDEO_openPlaybackChildScreen VIDEO_openPlaybackFrontEnd VIDEO_pbGetPlaybackLink VIDEO_pbGetTimespanBegin VIDEO_pbGetTimespanEnd VIDEO_pbIsPlaybackDefined VIDEO_setWidgetActive VIDEO_stateColor  waitForDpValue
syn keyword ctrlFunctions     waitThread weekDay windowStyle writeAuditBatchEntry writeAuditEntry writeDictionary wss_getGenericSetting wss_getSpecificSetting wss_getSpecificWorkstationSetting wss_getWorkstationSettings  xmlAppendChild
syn keyword ctrlFunctions     xmlChildNodes xmlCloseDocument xmlDocumentFromFile xmlDocumentFromString xmlDocumentToFile xmlDocumentToString xmlElementAttributes xmlFirstChild xmlGetElementAttribute xmlNewDocument xmlNextSibling xmlNodeName xmlNodeType xmlNodeValue xmlParentNode xmlRemoveElementAttribute xmlRemoveNode xmlrpcCall xmlrpcClient xmlrpcConnectToServer xmlrpcCloseServer xmlrpcDecodeRequest xmlrpcDecodeValue xmlrpcEncodeResponse xmlrpcEncodeValue xmlrpcHandler xmlrpcSetGzipLimit xmlSetElementAttribute xmlSetNodeValue
syn keyword ctrlFunctions     year yearDay
syn keyword ctrlFunctions     ZoomModule

syn keyword ctrlDebug         Debug DebugFN DebugFTN DebugN DebugTN

syn keyword ctrlVoidType      void
syn keyword ctrlBasicTypes    dbRecordset dbConnection dbCommand shape idispatch
syn keyword ctrlBasicTypes    anytype     dyn_anytype     dyn_dyn_anytype
syn keyword ctrlBasicTypes    atime       dyn_atime       dyn_dyn_atime
syn keyword ctrlBasicTypes    bit32       dyn_bit32       dyn_dyn_32
syn keyword ctrlBasicTypes    bit64       dyn_bit64       dyn_dyn_bit64
syn keyword ctrlBasicTypes    blob        dyn_blob        dyn_dyn_blob
syn keyword ctrlBasicTypes    bool        dyn_bool        dyn_dyn_bool
syn keyword ctrlBasicTypes    char        dyn_char        dyn_dyn_char
syn keyword ctrlBasicTypes    double      dyn_double      dyn_dyn_double
syn keyword ctrlBasicTypes    errClass    dyn_errClass    dyn_dyn_errClass
syn keyword ctrlBasicTypes    file        dyn_file        dyn_dyn_file
syn keyword ctrlBasicTypes    float       dyn_float       dyn_dyn_float
syn keyword ctrlBasicTypes    function    dyn_function    dyn_dyn_function
syn keyword ctrlBasicTypes    int         dyn_int         dyn_dyn_int
syn keyword ctrlBasicTypes    uint        dyn_uint        dyn_dyn_uint
syn keyword ctrlBasicTypes    long        dyn_long        dyn_dyn_long
syn keyword ctrlBasicTypes    ulong       dyn_ulong       dyn_dyn_ulong
syn keyword ctrlBasicTypes    langString  dyn_langString  dyn_dyn_langString
syn keyword ctrlBasicTypes    mixed       dyn_mixed       dyn_dyn_mixed
syn keyword ctrlBasicTypes    mapping     dyn_mapping     dyn_dyn_mapping
syn keyword ctrlBasicTypes    va_list     dyn_va_list     dyn_dyn_va_list
syn keyword ctrlBasicTypes    string      dyn_string      dyn_dyn_string
syn keyword ctrlBasicTypes    time        dyn_time        dyn_dyn_time
syn keyword ctrlBasicTypes    unsigned    dyn_unsigned    dyn_dyn_unsigned

syn match   ctrlNumbers       "\v<\d+>"
syn match   ctrlNumbers       "\v<\d+\.\d+>"

syn keyword ctrlBooleans      false true FALSE TRUE

syn region  ctrlString        start='"' end='"' skip='\\"'

syn keyword ctrlTodo          contained TODO FIXME XXX NOTE
syn match   ctrlDoxygen       contained "@\w*"
syn match   ctrlComment       "//.*$" contains=ctrlTodo,ctrlDoxygen
syn region  ctrlCommentBlock  start="\/\*" end="\*\/" contains=ctrlTodo,ctrlDoxygen

syn region  ctrlBlock         start=/{/ end=/}/ contains=ALL

syn match   ctrlPreProc       "#\w*"

syn match   ctrlDelimiter     "[(),]"
syn match   ctrlBlockOp       "[{}\[\]]"

let b:current_syntax = "ctrl"

hi def link ctrlDelimiter    Operator
hi def link ctrlBlockOp      Function

hi def link ctrlStatements   Statement
hi def link ctrlConditionals Conditional
hi def link ctrlRepeats      Repeat
hi def link ctrlLabels       Label
hi def link ctrlOperators    Operator
hi def link ctrlExceptions   Exception

hi def link ctrlFunctions    Function

hi def link ctrlVisibility   StorageClass
hi def link ctrlStorageClass StorageClass

hi def link ctrlBasicTypes   Type
hi def link ctrlVoidType     Type

hi def link ctrlNumbers      Number

hi def link ctrlConsts       Constant
hi def link ctrlBooleans     Boolean

hi def link ctrlString       String

hi def link ctrlComment      Comment
hi def link ctrlCommentBlock Comment
hi def link ctrlTodo         Todo
hi def link ctrlDoxygen      Special

hi def link ctrlPreProc      PreProc

hi def link ctrlDebug        Debug
