create or replace procedure CB_MOVE_SET_USER_RIGHT AS
  userRight   varchar2(5); --用户权限
  userAuthLvl varchar2(1); --用户授权级别
begin
    --设置设置用户新网银权限
    FOR allUserInfo IN (select op.ncid,
                               op.oid,
                               cert.cci_certid,
                               op.oper_type,
                               cert.cci_cstno
                          from FIRMBANK_ZHIJIANG.t_OPERATOR op,
                               cb_cert_inf cert
                         where substr(op.ncid, 2) = cert.cci_cstno
                           and substr(op.oid, 3) = cert.cci_userno)
    LOOP
      userAuthLvl := '0';
      userRight   := func_get_user_right(allUserInfo.ncid,
                                         allUserInfo.oid,
                                         allUserInfo.oper_type);
      IF substr(userRight, 3, 1) = '1' THEN
        userAuthLvl := '1';
      END IF;
      update cb_user_inf usr
         set UIF_RIGHT = userRight, UIF_AUTHLVL = userAuthLvl
       where usr.uif_cstno = allUserInfo.cci_cstno
         and usr.uif_userno = substr(allUserInfo.oid, 3);
    END LOOP;
end;
/
