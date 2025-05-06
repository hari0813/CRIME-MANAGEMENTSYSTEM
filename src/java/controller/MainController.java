
package controller;
import dbutil.DBContext;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AdminReg;
import model.Chargesheet;
import model.Crimereg;
import model.Edesignation;

import model.Employe;
import model.Ereg;
import model.Eregister;
import model.Evilink;

import model.Firreg;

import model.Investicate;
import model.Investigationregister;


import model.Ireg;
import model.Psreg;
import model.Stationreg;



import model.Udate;
import model.Updateinvestigation;

import model.Victreg;
import model.Vreg;
import model.Wreg;
import model.Writerreg;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MainController {
    
    @RequestMapping("/index")
    public ModelAndView redirectHome() {
        return new ModelAndView("index");
}
    @RequestMapping("/Station_Reg_Form")
    public ModelAndView redirectStationReg(){
        return new ModelAndView("Station_Reg_Form");
    }
    
    @RequestMapping("/Station_Reg_data")
    public ModelAndView storeStationData(HttpServletRequest request, HttpServletResponse response) {
        
          Stationreg sta = new Stationreg();
        
          sta.setPolice_id(request.getParameter("station_id"));
          sta.setPolice_name(request.getParameter("station_name"));
          sta.setEmail(request.getParameter("email"));
          sta.setContact(request.getParameter("number"));
          sta.setDate(request.getParameter("date"));
          sta.setAddress(request.getParameter("address"));
      
       
        DBContext.getContext().createData(sta);
        
        return new ModelAndView("register_success");
    }
    @RequestMapping("/Victim_Registration")
    public ModelAndView redirectVictimReg(){
        return new ModelAndView("Victim_Registration");
    }
    @RequestMapping("/victim_register_data")
    public ModelAndView storeVictRegData(HttpServletRequest request , HttpServletResponse response) {
        
        Victreg reg = new Victreg();
        
        reg.setEvidence_id(request.getParameter("evidence_id"));
        reg.setType_evidene(request.getParameter("type_of_evidence"));
        reg.setDescription(request.getParameter("evidence_description"));
        reg.setLink_fir(request.getParameter("link_to_fir"));
        reg.setDate(request.getParameter("collection_date"));
        reg.setStatus(request.getParameter("evidence_status"));
        reg.setOfficer(request.getParameter("handling_officer"));
        reg.setLocation(request.getParameter("location_of_evidence"));
       
        DBContext.getContext().createData(reg);
        
        return new ModelAndView("register_success");
    }
    @RequestMapping("/FIR_Reg_Form")
    public ModelAndView redirectFirReg(){
        return new ModelAndView("FIR_Reg_Form");
    }
      @RequestMapping("/fir_reg_data")
    public ModelAndView storeFirregData(HttpServletRequest request , HttpServletResponse response) {
        
        Firreg fir=new  Firreg();
        fir.setFirnum(request.getParameter("fir_number"));
        fir.setVictimname(request.getParameter("victim_name"));
        fir.setCrimecategory(request.getParameter("category"));
        fir.setCrimenature(request.getParameter("nature"));
        fir.setOfficer(request.getParameter("officer"));
        fir.setDescription(request.getParameter("description"));
        fir.setDate(request.getParameter("date"));
        fir.setPlace(request.getParameter("place"));
        fir.setWitnesses(request.getParameter("witnesses"));
       
        DBContext.getContext().createData(fir);
        
        return new ModelAndView("register_success");
    }
    
     
    @RequestMapping("/Charge_Sheet_Form")
    public ModelAndView redirectChargeFrom(){
        return new ModelAndView("Charge_Sheet_Form");
    }
      @RequestMapping("/charge_reg_data")
    public ModelAndView storeCharge_Data(HttpServletRequest request , HttpServletResponse response) {
        
        Chargesheet charg =new  Chargesheet();
        charg.setSheet_id(request.getParameter("sheet_id"));
        charg.setFir_num(request.getParameter("fir_name"));
        charg.setAccused_name(request.getParameter("accused_name"));
        charg.setCrime_charge(request.getParameter("crime"));
        charg.setEvidence_link(request.getParameter("evidence_link"));
        charg.setFilling_date(request.getParameter("filling_date"));
        charg.setInvestigation_officer(request.getParameter("offecer"));
        charg.setCourt_date(request.getParameter("court_date"));
    
       
        DBContext.getContext().createData(charg);
        
        return new ModelAndView("register_success");
    }
    
    @RequestMapping("/Investigation_Reg_Form")
    public ModelAndView redirectInvestigationFrom(){
        return new ModelAndView("Investigation_Reg_Form");
    }
    @RequestMapping("/Investigation_Reg_Form_data")
    public ModelAndView storeInvesData(HttpServletRequest request , HttpServletResponse response) {
        
        Investicate inv = new Investicate();
        inv.setInvest_id(request.getParameter("investigation_id"));
        inv.setFir_num(request.getParameter("fir_num"));
        inv.setInvest_off(request.getParameter("officer"));
        inv.setInvest_status(request.getParameter("status"));
        inv.setInvest_notes(request.getParameter("notes"));
        inv.setEvedince(request.getParameter("collect"));
        inv.setDate(request.getParameter("date"));
       
        DBContext.getContext().createData(inv);
        
        return new ModelAndView("register_success");
    }
    
    
    
    @RequestMapping("/V_Register")
    public ModelAndView redirectVreg(){
        return new ModelAndView("V_Register");
    }
    @RequestMapping("/v_reg_data")
    public ModelAndView storeVregData(HttpServletRequest request , HttpServletResponse response) {
        
      Vreg vr =new  Vreg();
       vr.setVictim_id(request.getParameter("victim_id"));
       vr.setName(request.getParameter("name"));
       vr.setEmail(request.getParameter("email"));
       vr.setAge(request.getParameter("age"));
       vr.setGender(request.getParameter("gender"));
       vr.setContact(request.getParameter("contact"));
       vr.setAddresss(request.getParameter("address"));
       vr.setOccupation(request.getParameter("occupation"));
       vr.setCrime_type(request.getParameter("crime"));
       vr.setDate(request.getParameter("date"));
       vr.setStatement(request.getParameter("victim_statement"));
    
       
        DBContext.getContext().createData(vr);
        
        return new ModelAndView("register_success");
    }
    @RequestMapping("/I_Form")
    public ModelAndView redirectIFrom(){
        return new ModelAndView("I_Form");
    }
    @RequestMapping("/i_reg_data")
    public ModelAndView storeIregData(HttpServletRequest request , HttpServletResponse response) {
        
      Ireg ir =new  Ireg();
      ir.setCharge_id(request.getParameter("charge_id"));
      ir.setFir_num(request.getParameter("fir_num"));
      ir.setAccused_name(request.getParameter("accused_name"));
      ir.setCrime_charge(request.getParameter("crime_charges"));
      ir.setEvidence_link(request.getParameter("evidence"));
      ir.setFilling_date(request.getParameter("date_of_filling"));
      ir.setInvestigation_officer(request.getParameter("investigation_officer"));
      ir.setCourt_date(request.getParameter("court_date"));
      
      
       
        DBContext.getContext().createData(ir);
        
        return new ModelAndView("register_success");
    }

    @RequestMapping("/W_Register")
    public ModelAndView redirectWReg(){
        return new ModelAndView("W_Register");
    }
    @RequestMapping("/w_reg_data")
    public ModelAndView storeWregData(HttpServletRequest request , HttpServletResponse response) {
        
      Wreg wr =new  Wreg();
      wr.setWitness_name(request.getParameter("witness_name"));
      wr.setWitness_id(request.getParameter("witness_id"));
      wr.setRelationship(request.getParameter("relationship_to_victim"));
      wr.setStatement(request.getParameter("witness_statement"));
      wr.setContact(request.getParameter("contact"));
      wr.setAvailability(request.getParameter("witness_availability"));
      wr.setStatement_date(request.getParameter("date_of_witness_statement"));
      wr.setVictim_statement(request.getParameter("victim_statement"));
      
      
       
        DBContext.getContext().createData(wr);
        
        return new ModelAndView("register_success");
    }
    
     @RequestMapping("/E_Register")
    public ModelAndView redirectERegister(){
        return new ModelAndView("E_Register");
    }
     @RequestMapping("/e_register_data")
    public ModelAndView storeEregData(HttpServletRequest request , HttpServletResponse response) {
        
        Eregister erg=new  Eregister();
        erg.setEvidence_id(request.getParameter("evidence_id"));
        erg.setType_evidence(request.getParameter("type_of_evidence"));
        erg.setDescription(request.getParameter("evidence_description"));
        erg.setFir_link(request.getParameter("link_to_fir"));
        erg.setClloction_date(request.getParameter("collection_date"));
        erg.setStatus(request.getParameter("evidence_status"));
        erg.setOfficer(request.getParameter("handling_officer"));
        erg.setLocation(request.getParameter("location_of_evidence"));
       
        DBContext.getContext().createData(erg);
        
        return new ModelAndView("register_success");
    }
    
    @RequestMapping("/C_Register")
    public ModelAndView redirectCReg(){
        return new ModelAndView("C_Register");
    }
    @RequestMapping("/PS_Reg")
    public ModelAndView redirectPSReg(){
        return new ModelAndView("PS_Reg");
    }
     @RequestMapping("/ps_reg_data")
    public ModelAndView storePsregData(HttpServletRequest request , HttpServletResponse response) {
        
        Psreg ps=new  Psreg();
       ps.setWitness_name(request.getParameter("witness_name"));
       ps.setWitness_id(request.getParameter("witness_id"));
       ps.setRelation_victim(request.getParameter("relationship_to_victim"));
       ps.setVictim_statement(request.getParameter("witness_statement"));
       ps.setContact(request.getParameter("contact"));
       ps.setAvailability(request.getParameter("witness_availability"));
       ps.setStatement_date(request.getParameter("date_of_witness_statement"));
       ps.setVictim_statement(request.getParameter("victim_statement"));
       
        DBContext.getContext().createData(ps);
        
        return new ModelAndView("register_success");
    }
    @RequestMapping("/Employee_Reg")
    public ModelAndView redirectEmployeeReg(){
        return new ModelAndView("Employee_Reg");
    }
    @RequestMapping("/employe_reg_data")
    public ModelAndView storeEmployeregData(HttpServletRequest request , HttpServletResponse response) {
        
       Employe emp=new  Employe();
      emp.setEmploye_id(request.getParameter("employee_id"));
      emp.setEmploye_name(request.getParameter("employee_name"));
      emp.setGender(request.getParameter("gender"));
      emp.setDob(request.getParameter("date_of_birth"));
      emp.setContact(request.getParameter("employee_contact_number"));
      emp.setEmail(request.getParameter("employee_email_id"));
      emp.setAddress(request.getParameter("address"));
      emp.setJoin_date(request.getParameter("joining_date"));
      emp.setPolice_station(request.getParameter("police_station"));
      emp.setPosition(request.getParameter("position"));
      emp.setEmergenccy_contact(request.getParameter("emergency_contact_number"));
       
        DBContext.getContext().createData(emp);
        
        return new ModelAndView("register_success");
    }
    @RequestMapping("/E_Designation")
    public ModelAndView redirectEDesignation(){
        return new ModelAndView("E_Designation");
    }
     @RequestMapping("/edesignation_reg_data")
    public ModelAndView storeEdesignationregData(HttpServletRequest request , HttpServletResponse response) {
        
       Edesignation ede=new  Edesignation();
     
       ede.setEmploye_id(request.getParameter("employee_id"));
       ede.setPolice_station(request.getParameter("police_station"));
       ede.setDesignation(request.getParameter("position"));
       ede.setAssignment_date(request.getParameter("date_of_assignment"));
       ede.setRemark(request.getParameter("remarks"));
       
        DBContext.getContext().createData(ede);
        
        return new ModelAndView("register_success");
    }
    @RequestMapping("/E_Reg")
    public ModelAndView redirectE_Reg(){
        return new ModelAndView("E_Reg");
    }
    @RequestMapping("/e_reg_data")
    public ModelAndView storeEveregData(HttpServletRequest request , HttpServletResponse response) {
        
       Ereg er=new  Ereg();
       er.setEmploye_id(request.getParameter("employee_id"));
       er.setFir_num(request.getParameter("fir_number"));
       er.setInvestigation_id(request.getParameter("investigation_id"));
       er.setEvidence_type(request.getParameter("type_of_evidence"));
       er.setDescription(request.getParameter("description_of_evidence"));
       er.setEvidence_link(request.getParameter("evidence_link_to_crime"));
       er.setCollect_date(request.getParameter("collection_date"));
       er.setCollected_by(request.getParameter("collected_by"));
       er.setEvidence_condition(request.getParameter("evidence_condition"));
       er.setEvidence_status(request.getParameter("evidence_status"));
       er.setStore_location(request.getParameter("storage_location"));
       er.setRemark(request.getParameter("remarks"));
     
      
       
        DBContext.getContext().createData(er);
        
        return new ModelAndView("register_success");
    }
    
    @RequestMapping("/E_Update")
    public ModelAndView redirectE_UpdateFrom(){
        return new ModelAndView("E_Update");
    }
    @RequestMapping("/e_update_data")
    public ModelAndView storeUdateData(HttpServletRequest request , HttpServletResponse response) {
        
        Udate ud=new Udate();
        
        ud.setEvidence_id(request.getParameter("evidence_id"));
        ud.setCurrent_status(request.getParameter("current_status"));
        ud.setUpdate_by(request.getParameter("updated_by"));
        ud.setLocation(request.getParameter("location"));
        ud.setUpdate_date(request.getParameter("date_of_update"));
        ud.setReason_change(request.getParameter("reason_for_status_change"));
       
      
       
        DBContext.getContext().createData(ud);
        
        return new ModelAndView("register_success");
    }
    
    
    @RequestMapping("/E_Link")
    public ModelAndView redirectE_LinkFrom(){
        return new ModelAndView("E_Link");
    }
   @RequestMapping("/e_link_data")
    public ModelAndView storeEvilinData(HttpServletRequest request , HttpServletResponse response) {
        
        Evilink ev=new Evilink();
        ev.setEvidence_id(request.getParameter("evidence_id"));
        ev.setType_link(request.getParameter("link_type"));
        ev.setDescription(request.getParameter("link_description"));
        ev.setLink_to(request.getParameter("linked_to"));
        ev.setDate(request.getParameter("date"));
        
       
      
       
        DBContext.getContext().createData(ev);
        
        return new ModelAndView("register_success");
    }
    @RequestMapping("/E_Review")
    public ModelAndView redirectE_ReviewFrom(){
        return new ModelAndView("E_Review");
    }
    
     @RequestMapping("/login")
    public ModelAndView redirectLogin(){
        return new ModelAndView("login");
    }
    
    
    @RequestMapping("/admin_reg")
    public ModelAndView redirectAdminReg() {
        return new ModelAndView("admin_reg");
    }

    @RequestMapping("/admin_login")
    public ModelAndView redirectAdminLogin() {
        return new ModelAndView("admin_login");
    }

    @RequestMapping("/investigation_register")
    public ModelAndView redirectIReg() {
        return new ModelAndView("investigation_register");
    }

    @RequestMapping("/i_login")
    public ModelAndView redirectILogin() {
        return new ModelAndView("i_login");
    }

    @RequestMapping("/writer_reg")
    public ModelAndView redirectWriterReg() {
        return new ModelAndView("writer_reg");
    }

    @RequestMapping("/writer_login")
    public ModelAndView redirectWriterLogin() {
        return new ModelAndView("writer_login");
    }

    @RequestMapping("/admin_reg_data")
    public ModelAndView storeAdminRegData(HttpServletRequest request, HttpServletResponse response) {

        AdminReg ar = new AdminReg();
        ar.setEmail(request.getParameter("email"));
        ar.setFull_name(request.getParameter("full_name"));
        ar.setPassword(request.getParameter("password"));
        ar.setUser_name(request.getParameter("username"));

        DBContext.getContext().createData(ar);

        return new ModelAndView("admin_register_success");
    }

    @RequestMapping("/admin_login_verify")
    public org.springframework.web.servlet.ModelAndView headLoginVerify(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String result_page = "";

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        List data = DBContext.getContext().readData("from AdminReg where user_name='" + username + "' ");
        Iterator ite = data.iterator();
        while (ite.hasNext()) {
            AdminReg head = (AdminReg) ite.next();
            String username_db = head.getUser_name();
            String password_db = head.getPassword();

            if (username_db.equals(username)) {
                if (password_db.equals(password)) {
                    session.setAttribute("username", username);
                    result_page = "admin_home";
                } else {
                    result_page = "admin_login";
                }
            } else {
                result_page = "admin_login";
            }
        }

        return new org.springframework.web.servlet.ModelAndView(result_page);
    }
    @RequestMapping("/admin_home")
    public ModelAndView redirectAdminHome() {
        return new ModelAndView("admin_home");
    }

    @RequestMapping("/investigation_register_data")
    public ModelAndView storeInvestigationRegData(HttpServletRequest request, HttpServletResponse response) {

        Investigationregister investigationregister = new Investigationregister();
        investigationregister.setBatch_no(request.getParameter("invest_badge"));
        investigationregister.setEmail(request.getParameter("invest_email"));
        investigationregister.setFull_name(request.getParameter("invest_name"));
        investigationregister.setPass_word(request.getParameter("invest_password"));
        investigationregister.setPhone_number(request.getParameter("invest_phone"));
        investigationregister.setPolice_station(request.getParameter("invest_station"));
        investigationregister.setRank(request.getParameter("invest_rank"));
        investigationregister.setUser_name(request.getParameter("invest_username"));

        DBContext.getContext().createData(investigationregister);

        return new ModelAndView("registerr_success");
    }

    @RequestMapping("/i_login_verify")
    public org.springframework.web.servlet.ModelAndView ILoginVerify(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String result_page = "";

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        List data = DBContext.getContext().readData("from Investigationregister where user_name='" + username + "' ");
        Iterator ite = data.iterator();
        while (ite.hasNext()) {
            Investigationregister head = (Investigationregister) ite.next();
            String username_db = head.getUser_name();
            String password_db = head.getPass_word();

            if (username_db.equals(username)) {
                if (password_db.equals(password)) {
                    session.setAttribute("username", username);
                    result_page = "i_home";
                } else {
                    result_page = "i_login";
                }
            } else {
                result_page = "i_login";
            }
        }

        return new org.springframework.web.servlet.ModelAndView(result_page);
    }

    @RequestMapping("/i_home")
    public ModelAndView redirectInvestHome() {
        return new ModelAndView("i_home");
    }

    @RequestMapping("/writer_reg_data")
    public ModelAndView storeWriterRegData(HttpServletRequest request, HttpServletResponse response) {

        Writerreg w = new Writerreg();
        w.setDepartment(request.getParameter("writer_department"));
        w.setEmail(request.getParameter("writer_email"));
        w.setEmployee_id(request.getParameter("writer_employeeId"));
        w.setFull_name(request.getParameter("writer_name"));
        w.setPassword(request.getParameter("writer_password"));
        w.setPhone_number(request.getParameter("writer_phone"));
        w.setUser_name(request.getParameter("writer_username"));

        DBContext.getContext().createData(w);

        return new ModelAndView("registerr_success");
    }

    @RequestMapping("/writer_login_verify")
    public org.springframework.web.servlet.ModelAndView WriterLoginVerify(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String result_page = "";

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        List data = DBContext.getContext().readData("from Writerreg where username='" + username + "' ");
        Iterator ite = data.iterator();
        while (ite.hasNext()) {
            Writerreg head = (Writerreg) ite.next();
            String username_db = head.getUser_name();
            String password_db = head.getPassword();

            if (username_db.equals(username)) {
                if (password_db.equals(password)) {
                    session.setAttribute("username", username);
                    result_page = "writer_home";
                } else {
                    result_page = "writer_login";
                }
            } else {
                result_page = "writer_login";
            }
        }

        return new org.springframework.web.servlet.ModelAndView(result_page);
    }

    @RequestMapping("/view_fir")
    public ModelAndView ViewFir() {
        return new ModelAndView("view_fir");
    }

    @RequestMapping("/view_victim")
    public ModelAndView ViewVictim() {
        return new ModelAndView("view_victim");
    }

    @RequestMapping("/view_witness")
    public ModelAndView ViewWitness() {
        return new ModelAndView("view_witness");
    }

    @RequestMapping("/view_evidence")
    public ModelAndView ViewEvidence() {
        return new ModelAndView("view_evidence");
    }

    @RequestMapping("/view_charge")
    public ModelAndView ViewCharge() {
        return new ModelAndView("view_charge");
    }

    @RequestMapping("/view_investigation")
    public ModelAndView ViewInvestigation() {
        return new ModelAndView("view_investigation");
    }

    @RequestMapping("/update_investigation_form")
    public ModelAndView Updateinvestigation() {
        return new ModelAndView("update_investigation_form");
    }

    @RequestMapping("/update_investigation_form_data")
    public ModelAndView storeInvestRegData(HttpServletRequest request, HttpServletResponse response) {

        Updateinvestigation w = new Updateinvestigation();
        w.setCase_number(request.getParameter("casenumber"));
        w.setFir_id(request.getParameter("firId"));
        w.setInvest_off(request.getParameter("officername"));
        w.setInvest_status(request.getParameter("status"));
        w.setRemarks(request.getParameter("remarks"));

        DBContext.getContext().createData(w);

        return new ModelAndView("update_register_success");
    }

    @RequestMapping("/view_investi")
    public ModelAndView ViewInvesti() {
        return new ModelAndView("view_investi");
    }

    @RequestMapping("/view_crime")
    public ModelAndView ViewCrime() {
        return new ModelAndView("view_crime");
    }

    @RequestMapping("/C_Register_data")
    public ModelAndView storeCRegData(HttpServletRequest request, HttpServletResponse response) {

        Crimereg w = new Crimereg();
        w.setCrime_code(request.getParameter("crimecode"));
        w.setCrime_desc(request.getParameter("description"));
        w.setCrime_name(request.getParameter("crimename"));
        w.setCrime_type(request.getParameter("crimetype"));

        DBContext.getContext().createData(w);

        return new ModelAndView("crime_register_success");
    }

    @RequestMapping("/view_investigation_off")
    public ModelAndView ViewInvestigationOff() {
        return new ModelAndView("view_investigation_off");
    }

    @RequestMapping("/delete_notice")
    public ModelAndView deleteNotice(HttpServletRequest request) {
        String notice_id = request.getParameter("nid");
        Investigationregister notice = new Investigationregister();
        notice.setUser_name(notice_id);

        DBContext.getContext().deleteData(notice);
        return new ModelAndView("view_investigation_off");
    }

    @RequestMapping("/view_employee_reg")
    public ModelAndView ViewEmployeeReg() {
        return new ModelAndView("view_employee_reg");
    }

    @RequestMapping("/delete_noticee")
    public org.springframework.web.servlet.ModelAndView deleteNoticee(HttpServletRequest request) {
        String notice_id = request.getParameter("nid");
        Writerreg notice = new Writerreg();
        notice.setUser_name(notice_id);

        DBContext.getContext().deleteData(notice);
        return new org.springframework.web.servlet.ModelAndView("admin_home");
    }

    @RequestMapping("/view_station")
    public ModelAndView ViewStationReg() {
        return new ModelAndView("view_station");
    }

 

}