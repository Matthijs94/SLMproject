s��        �   ) j:  �   �   ����                               MLApp                           Matlab Automation Server Type Library                                                                    � ��const char *     � ��LCID     	� 	��ERRORINFO  �  � ��HRESULT  � � ��SAFEARRAY *  � 	� 	��LPUNKNOWN     � ��VARIANT  � � ��VBOOL  �  � ��SCODE  � � ��CAObjHandle  � � ��DATE     � ��CURRENCY   '    Matlab Automation Server Type Library     '    Matlab Application Dispatch Interface     %    Matlab Application Server Interface         IMLEval Interface     "    Matlab MLEval Dispatch Interface    c    Use this function to create a new DIMLApp object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    �
����  �    Status                             -   �  �    Server                             - �     �    Support Multithreading            	� -� �  �    Locale                            " �      �    Reserved                          l � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          s    Use this function to load an existing DIMLApp object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    :
����  �    Status                            H -   �  �    File Name                         � - � �  �    Server                            � -�     �    Support Multithreading            i �  �  �    Locale                            � � �     �    Reserved                           �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active DIMLApp object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    M
����  �    Status                            [ -   �  �    Server                            9 - �     �    Support Multithreading            � -� �  �    Locale                            !P �      �    Reserved                          !� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    m    Documentation for this function, if provided by the server, is located in the function help.

The Array Functions class in the CVI ActiveX Library contains functions to help convert a Safe Array into a C Style array. If you do not convert the Safe Array into a C Style array, you must free the Safe Array using the CVI ActiveX Library function CA_SafeArrayDestroy    m    Documentation for this function, if provided by the server, is located in the function help.

The Array Functions class in the CVI ActiveX Library contains functions to help convert a Safe Array into a C Style array. If you do not convert the Safe Array into a C Style array, you must free the Safe Array using the CVI ActiveX Library function CA_SafeArrayDestroy    #�
����  �    Status                            & -   �  �    Object Handle                     'Z - � �  �    Error Info                        )� -� �  �    Name                              )� �  �  �    Workspace                         *R � � �  �    Pr                                +� �� �  �    Pi                                 	                       NULL    ""    ""    	           	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    .�
����  �    Status                            1 -   �  �    Object Handle                     2` - � �  �    Error Info                        4� -� �  �    Name                              4� �  �  �    Workspace                         5X � � �  �    Pr                                5� �� �  �    Pi                                 	                       NULL    ""    ""               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.        The string returned by the function.

Documentation for this function, if provided by the server, is located in the function help.

When it is no longer needed, you must free the string returned in this parameter by calling the CVI ActiveX Library function CA_FreeMemory.    7�
����  �    Status                            9� -   �  �    Object Handle                     ;8 - � �  �    Error Info                        =d -� �  �    Name                              =� �     �    Return Value                       	                       NULL    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    @
����  �    Status                            B= -   �  �    Object Handle                     C� - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    Fv
����  �    Status                            H� -   �  �    Object Handle                     I� - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    L�
����  �    Status                            N� -   �  �    Object Handle                     P; - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.        The string returned by the function.

Documentation for this function, if provided by the server, is located in the function help.

When it is no longer needed, you must free the string returned in this parameter by calling the CVI ActiveX Library function CA_FreeMemory.    S&
����  �    Status                            UE -   �  �    Object Handle                     V� - � �  �    Error Info                        X� -� �  �    Name                              Y% �  �  �    Workspace                         Y� � �    �    Return Value                       	                       NULL    ""    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    \
����  �    Status                            ^9 -   �  �    Object Handle                     _� - � �  �    Error Info                        a� -� �  �    Name                              b �  �  �    Workspace                         b � � �  �    Char Array                         	                       NULL    ""    ""    ""        property Visible        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    The value returned by the ActiveX server function.

Documentation for this function, if provided by the server, is located in the function help.    do
����  �    Status                            f� -   �  �    Object Handle                     g� - � �  �    Error Info                        j -�    �    Return Value                       	                       NULL    	                property Visible        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    k�
����  �    Status                            m� -   �  �    Object Handle                     o) - � �  �    Error Info                        qU -�    �    New Value                          	                       NULL            method GetWorkspaceData        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

    r�
����  �    Status                            t� -   �  �    Object Handle                     vA - � �  �    Error Info                        xm -� �  �    Name                              x� �  �  �    Workspace                         y9 � � �  �    Pdata                              	                       NULL    ""    ""    	                method PutWorkspaceData        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    |
����  �    Status                            ~7 -   �  �    Object Handle                     � - � �  �    Error Info                        �� -� �  �    Name                              � �  �  �    Workspace                         �} � � �  �    Data                               	                       NULL    ""    ""            method Feval        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    �gn����  `    Status                            ��    �  `    Object Handle                     ��  h �  `    Error Info                        �   � �  `    Bstr Name                         �f 0    `    Nargout                           �� � �  `    Pvar Arg Out                      � V  �  `    Arg1                              �z V h �  `    Arg2                              �� V � �  `    Arg3                              �F V0 �  `    Arg4                              �� V� 	�  `    Arg5                              � �  
�  `    Arg6                              �x � h �  `    Arg7                              �� � � �  `    Arg8                              �D �0 �  `    Arg9                              �� �� �  `    Arg10                             � �  �  `    Arg11                             �v � h �  `    Arg12                             �� � � �  `    Arg13                             �B �0 �  `    Arg14                             �� �� �  `    Arg15                             � �  �  `    Arg16                             �t � h �  `    Arg17                             �� � � �  `    Arg18                             �@ �0 �  `    Arg19                             �� �� �  `    Arg20                             �  �  `    Arg21                             �r h �  `    Arg22                             �� � �  `    Arg23                             �>0 �  `    Arg24                             ��� �  `    Arg25                             �
<  �  `    Arg26                             �p< h �  `    Arg27                             ��< �  �  `    Arg28                             �<<0 !�  `    Arg29                             ��<� "�  `    Arg30                             �j  #�  `    Arg31                             �nj h $�  `    Arg32                              	                       NULL    ""        	            CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL        method GetVariable        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    F    An ActiveX object handle obtained from NewDIMLApp, OpenDIMLApp, ActiveDIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    9    The Variant returned by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

    �D
����  �    Status                            �c -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �  �    Name                              �C �  �  �    Workspace                         �� � � �  �    Return Value                       	                       NULL    ""    ""    	           b    Use this function to create a new IMLApp object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    ��
����  �    Status                            �� -   �  �    Server                            �� - �     �    Support Multithreading            �� -� �  �    Locale                            �� �      �    Reserved                          �C � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          r    Use this function to load an existing IMLApp object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    �
����  �    Status                            � -   �  �    File Name                         �` - � �  �    Server                            �� -�     �    Support Multithreading            �? �  �  �    Locale                            �� � �     �    Reserved                          �� �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active IMLApp object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    �"
����  �    Status                            �0 -   �  �    Server                            � - �     �    Support Multithreading            �� -� �  �    Locale                            �% �      �    Reserved                          �o � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    m    Documentation for this function, if provided by the server, is located in the function help.

The Array Functions class in the CVI ActiveX Library contains functions to help convert a Safe Array into a C Style array. If you do not convert the Safe Array into a C Style array, you must free the Safe Array using the CVI ActiveX Library function CA_SafeArrayDestroy    m    Documentation for this function, if provided by the server, is located in the function help.

The Array Functions class in the CVI ActiveX Library contains functions to help convert a Safe Array into a C Style array. If you do not convert the Safe Array into a C Style array, you must free the Safe Array using the CVI ActiveX Library function CA_SafeArrayDestroy    ��
����  �    Status                            �� -   �  �    Object Handle                     �, - � �  �    Error Info                        �X -� �  �    Name                              Ӿ �  �  �    Workspace                         �$ � � �  �    Pr                                ՙ �� �  �    Pi                                 	                       NULL    ""    ""    	           	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    ��
����  �    Status                            �� -   �  �    Object Handle                     �/ - � �  �    Error Info                        �[ -� �  �    Name                              �� �  �  �    Workspace                         �' � � �  �    Pr                                ߍ �� �  �    Pi                                 	                       NULL    ""    ""               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �
����  �    Status                            � -   �  �    Object Handle                     � - � �  �    Error Info                        �0 -� �  �    Name                               	                       NULL    ""       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    �
����  �    Status                            � -   �  �    Object Handle                     �� - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    ��
����  �    Status                            � -   �  �    Object Handle                     �O - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    �:
����  �    Status                            �Y -   �  �    Object Handle                     �� - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    6    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.

When it is no longer needed, you must free the string returned in this parameter by calling the CVI ActiveX Library function CA_FreeMemory.    ��
����  �    Status                            �� -   �  �    Object Handle                     �� - � �  �    Error Info                       % -� �  �    Name                             � �  �  �    Workspace                        � � �    �    Ml String                          	                       NULL    ""    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                     - � �  �    Error Info                       
; -� �  �    Name                             
� �  �  �    Workspace                         � � �  �    Char Array                         	                       NULL    ""    ""    ""        property Visible        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                            -   �  �    Object Handle                    a - � �  �    Error Info                       � -�    �    P Val                              	                       NULL    	                property Visible        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   X
����  �    Status                           w -   �  �    Object Handle                    � - � �  �    Error Info                       � -�    �    P Val                              	                       NULL            method GetWorkspaceData        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    �    A Variant that is filled in by the function. You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

   m
����  �    Status                           � -   �  �    Object Handle                    � - � �  �    Error Info                       ! -� �  �    Name                             !i �  �  �    Workspace                        !� � � �  �    Pdata                              	                       NULL    ""    ""    	                method PutWorkspaceData        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   $�
����  �    Status                           ' -   �  �    Object Handle                    (b - � �  �    Error Info                       *� -� �  �    Name                             *� �  �  �    Workspace                        +Z � � �  �    Data                               	                       NULL    ""    ""            method Feval        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    �    A Variant that is filled in by the function. You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   -Dn����  `    Status                           /c    �  `    Object Handle                    0�  h �  `    Error Info                       2�  � �  `    Bstr Name                        3@ 0    `    Nargout                          3� � �  `    Pvar Arg Out                     58 V  �  `    Arg1                             5� V h �  `    Arg2                             6 V � �  `    Arg3                             6j V0 �  `    Arg4                             6� V� 	�  `    Arg5                             76 �  
�  `    Arg6                             7� � h �  `    Arg7                             8 � � �  `    Arg8                             8h �0 �  `    Arg9                             8� �� �  `    Arg10                            94 �  �  `    Arg11                            9� � h �  `    Arg12                            :  � � �  `    Arg13                            :f �0 �  `    Arg14                            :� �� �  `    Arg15                            ;2 �  �  `    Arg16                            ;� � h �  `    Arg17                            ;� � � �  `    Arg18                            <d �0 �  `    Arg19                            <� �� �  `    Arg20                            =0  �  `    Arg21                            =� h �  `    Arg22                            =� � �  `    Arg23                            >b0 �  `    Arg24                            >�� �  `    Arg25                            ?.<  �  `    Arg26                            ?�< h �  `    Arg27                            ?�< �  �  `    Arg28                            @`<0 !�  `    Arg29                            @�<� "�  `    Arg30                            A,j  #�  `    Arg31                            A�j h $�  `    Arg32                              	                       NULL    ""        	            CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL    CA_DEFAULT_VAL        method GetVariable        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    C    An ActiveX object handle obtained from NewIMLApp, OpenIMLApp, ActiveIMLApp, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    �    A Variant that is filled in by the function. You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

   Lh
����  �    Status                           N� -   �  �    Object Handle                    O� - � �  �    Error Info                       Q� -� �  �    Name                             Rd �  �  �    Workspace                        R� � � �  �    Pdata                              	                       NULL    ""    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.        An ActiveX object handle obtained from an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   U�
����  �    Status                           W� -   �  �    Object Handle                    Y - � �  �    Error Info                       [@ -� �  �    Bstr Name                        [� �     �    Nargout                          \ � � �  �    Pvar Arg Out                     ]T ��    �    Nargin                           ]� �  �  �    Var Arg In                         	                       NULL    ""        	                       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.        An ActiveX object handle obtained from an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   `
����  �    Status                           b% -   �  �    Object Handle                    cH - � �  �    Error Info                       et -� �  �    Bstr Name                        e� �     �    Nargout                          f@ � � �  �    Pvar Arg Out                     g� ��    �    Nargin                           g� �  �  �    Var Arg In                         	                       NULL    ""        	                 ����         �  E             K.        NewDIMLApp                                                                                                                              ����         �  �             K.        OpenDIMLApp                                                                                                                             ����         �  "s             K.        ActiveDIMLApp                                                                                                                           ����       ����  -<             K.        DIMLAppGetFullMatrix                                                                                                                    ����       ����  6$             K.        DIMLAppPutFullMatrix                                                                                                                    ����       ����  >�             K.        DIMLAppExecute                                                                                                                          ����       ����  E�             K.        DIMLAppMinimizeCommandWindow                                                                                                            ����       ����  L             K.        DIMLAppMaximizeCommandWindow                                                                                                            ����       ����  Rg             K.        DIMLAppQuit                                                                                                                             ����       ����  Z�             K.        DIMLAppGetCharArray                                                                                                                     ����       ����  b�             K.        DIMLAppPutCharArray                                                                                                                     ����         dU  j�             K.        DIMLAppGetVisible                                                                                                                       ����         k�  q�             K.        DIMLAppSetVisible                                                                                                                       ����         r�  z�             K.        DIMLAppGetWorkspaceData                                                                                                                 ����         {�  ��             K.        DIMLAppPutWorkspaceData                                                                                                                 ����         �Q  ��         &    �.        DIMLAppFeval                                                                                                                            ����         �(  ��             K.        DIMLAppGetVariable                                                                                                                      ����         �`  �             K.        NewIMLApp                                                                                                                               ����         ��  ��             K.        OpenIMLApp                                                                                                                              ����         �p  �H             K.        ActiveIMLApp                                                                                                                            ����       ����  �             K.        IMLAppGetFullMatrix                                                                                                                     ����       ����  ��             K.        IMLAppPutFullMatrix                                                                                                                     ����       ����  �             K.        IMLAppExecute                                                                                                                           ����       ����  �&             K.        IMLAppMinimizeCommandWindow                                                                                                             ����       ����  �{             K.        IMLAppMaximizeCommandWindow                                                                                                             ����       ����  ��             K.        IMLAppQuit                                                                                                                              ����       ���� /             K.        IMLAppGetCharArray                                                                                                                      ����       ���� m             K.        IMLAppPutCharArray                                                                                                                      ����        � >             K.        IMLAppGetVisible                                                                                                                        ����        > T             K.        IMLAppSetVisible                                                                                                                        ����        L #a             K.        IMLAppGetWorkspaceData                                                                                                                  ����        $� +�             K.        IMLAppPutWorkspaceData                                                                                                                  ����        -. A�         &    �.        IMLAppFeval                                                                                                                             ����        LL T\             K.        IMLAppGetVariable                                                                                                                       ����       ���� ^              K.        IMLEvalXLEval                                                                                                                           ����       ���� hT             K.        DIMLEvalXLEval                                                                                                                                �                                                                                    �DIMLApp                                                                              �New DIMLApp                                                                          �Open DIMLApp                                                                         �Active DIMLApp                                                                       �Get Full Matrix                                                                      �Put Full Matrix                                                                      �Execute                                                                              �Minimize Command Window                                                              �Maximize Command Window                                                              �Quit                                                                                 �Get Char Array                                                                       �Put Char Array                                                                       �Get Visible                                                                          �Set Visible                                                                          �Get Workspace Data                                                                   �Put Workspace Data                                                                   �Feval                                                                                �Get Variable                                                                        IMLApp                                                                               �New IMLApp                                                                           �Open IMLApp                                                                          �Active IMLApp                                                                        �Get Full Matrix                                                                      �Put Full Matrix                                                                      �Execute                                                                              �Minimize Command Window                                                              �Maximize Command Window                                                              �Quit                                                                                 �Get Char Array                                                                       �Put Char Array                                                                       �Get Visible                                                                          �Set Visible                                                                          �Get Workspace Data                                                                   �Put Workspace Data                                                                   �Feval                                                                                �Get Variable                                                                        CIMLEval                                                                              �XL Eval                                                                             ^DIMLEval                                                                             �XL Eval                                                                         