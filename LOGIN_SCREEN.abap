*&---------------------------------------------------------------------*
*& Report ZBK_LOGIN_SCREEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBK_LOGIN_SCREEN.


PARAMETERS: p_user TYPE char20,
            p_passwd TYPE char20.

AT SELECTION-SCREEN OUTPUT.
  LOOP AT SCREEN.
    IF screen-name EQ 'P_PASSWRD'.
     screen-invisible = 1.
     MODIFY SCREEN.
    ENDIF.
  ENDLOOP.

START-OF-SELECTION.

  IF p_user EQ 'SAPUSER_DEV' AND p_passwd EQ 'DOWN1OAD'.
    WRITE: ' LOGIN SUCCESSFUL'.
  ELSE.
    WRITE: 'USERNAME OR PASSWORD IS INCORRECT'.
  ENDIF.
