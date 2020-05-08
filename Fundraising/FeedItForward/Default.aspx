<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Midian3dOneGate.Fundraising.FeedItForward.FeedItDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Feed it Forward: Donate Now</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/app.css">
        <link rel="stylesheet" href="../common/css/default.css" />
    </head>
    <body>
<form runat="server">
    <asp:ScriptManager ID="ajaxScriptManager" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="ajaxUpdatePanel" runat="server">
        <ContentTemplate>
            <asp:Panel ID="pnlNonWorkingDemoTop" runat="server" CssClass="non-working-demo-panel">For Demo Purposes Only. To activate call 888-555-5555</asp:Panel>
        <!---Naviagation Bar-->
        <div class="nav">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <div class="logo-image">
                    <img src="images/logo.png" alt="default logo">
                </div>
                <div class="donation-amounts">
                  <div class="donations-sect">
                    <div class="donation-label-amount"><asp:Label ID="lblTotalAmountHeader" runat="server" Text="$0.00"></asp:Label></div>
                    <div class="donation-label"><asp:Label ID="lblTotalAmountHeaderLabel" runat="server" Text="Amount"></asp:Label></div>
                  </div>
                  <div class="donations-sect">
                    <div class="donation-label-amount"><asp:Label ID="lblTotalTargetAmountHeader" runat="server" Text="$0.00"></asp:Label></div>
                    <div class="donation-label">
            <asp:Label ID="lblTotalAmountTargetHeaderLabel" runat="server" Text="Goal"></asp:Label></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!---Hero Area--->
        <div class="hero-sect">
          <div class="container">
          </div>
        </div>
        <!---Donation Info--->
        <div class="donation-info-sect">

          <!---Your Support Is Appreciated-->
          <div class="container">
            <div class="row">

              <div class="your-support-sect">
                <div class="your-support-label">
                  Your<br/>Support<br/>Is Appreciated
                </div>
                <div class="goal-raised">
                  <div class="progress-amount">
                <asp:Label ID="lblTotalAmountProgress" runat="server" Text="0.00"></asp:Label>
       
                  </div>
                  <!---Progress Bar--->
                  <div class="progress">
                    <div runat="server" id="divTargetProgressBar" class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                  <!---End Progress Bar--->
                  <div class="row">
                    <div class="col-xs-6"><div class="raised-money-label">of <asp:Label ID="lblTotalTagetAmountProgress" runat="server" Text="0"></asp:Label>&nbsp;goal</div></div>
                    <div class="col-xs-6"><div class="raised-money-label-amount">Raised By <asp:Label ID="lblTotalDonationsCountProgress" runat="server" Text="0"></asp:Label>&nbsp;Donors</div></div>
                  </div>    
                </div>
              </div>

            </div>
          </div>
          <div class="ValidationSummaryContainer">
             <asp:ValidationSummary ID="vldSummary" runat="server" ForeColor="Red" ValidationGroup="grpEntryValidation" />   
          </div>
        <div class="ProcessingErrorContainer">
        <asp:Label ID="lblProcessingError" runat="server" Visible="False" ForeColor="Red"></asp:Label>
            </div>

          <div class="container">

            <div class="row" id="donation-info">
              <div class="col-md-12">
                <span class="donation-number">1</span><span class="section-titles">Donation info</span>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">

              <div class="donation-radio">
                <ul>
                  <li><asp:RadioButton ID="rbnDonateOnce" runat="server" Text="&nbsp;one time" GroupName="grpDonationInfo" AutoPostBack="True" /></li>
                  <li><asp:RadioButton ID="rbnDonateMonthly" runat="server" Text="&nbsp;monthly" GroupName="grpDonationInfo" AutoPostBack="True" Checked="True" /></li>
                </ul>
              </div>

              </div>
            </div>
            <div class="row">
               <asp:Panel ID="pnlDonationOption1" runat="server" Visible="False" >
              <div class="col-md-3" >
                <div class="per-month-box" id="divPerMonth1" runat="server">
                    <div class="selected-panel" id="divSelectedPanel1"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel1" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText1" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail1Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail1Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail1Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail1Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption2" runat="server" Visible="False">
              <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth2" runat="server">
                    <div class="selected-panel" id="divSelectedPanel2"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel2" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText2" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail2Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail2Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail2Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail2Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
            <asp:Panel ID="pnlDonationOption3" runat="server" Visible="False">

              <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth3" runat="server">
                    <div class="selected-panel" id="divSelectedPanel3"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel3" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText3" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail3Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail3Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail3Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail3Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption4" runat="server" Visible="False">
                <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth4" runat="server">
                    <div class="selected-panel" id="divSelectedPanel4"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel4" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText4" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail4Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail4Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail4Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail4Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption5" runat="server" Visible="False">
                              <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth5" runat="server">
                    <div class="selected-panel" id="divSelectedPanel5"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel5" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText5" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail5Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail5Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail5Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail5Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption6" runat="server" Visible="False">
                              <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth6" runat="server">
                    <div class="selected-panel" id="divSelectedPanel6"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel6" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText6" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail6Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail6Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail6Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail6Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption7" runat="server" Visible="False">
                <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth7" runat="server">
                    <div class="selected-panel" id="divSelectedPanel7"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel7" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText7" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail7Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail7Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail7Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail7Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption8" runat="server" Visible="False">
                              <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth8" runat="server">
                    <div class="selected-panel" id="divSelectedPanel8"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel8" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText8" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail8Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail8Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail8Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail8Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption9" runat="server" Visible="False">
                              <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth9" runat="server">
                    <div class="selected-panel" id="divSelectedPanel9"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel9" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText9" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail9Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail9Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail9Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail9Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
               <asp:Panel ID="pnlDonationOption10" runat="server" Visible="False">
                              <div class="col-md-3">
                <div class="per-month-box" id="divPerMonth10" runat="server">
                  <div class="selected-panel" id="divSelectedPanel10"></div>
                  <!-- Default checked -->
                  <div class="custom-control custom-checkbox">
                    <asp:Label ID="lblDonationAmountCheckboxLabel10" runat="server" Text="" CssClass="donation-amount-check-label"></asp:Label>
                  </div>
                  <div class="donation-title"><asp:Label ID="lblDonationOptionText10" runat="server" Text=""></asp:Label></div>
                  <div class="donation-details">
                    <ul>
                      <li>
                        <asp:Label ID="lblDonationDetail10Text1" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail10Text2" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail10Text3" runat="server" Text=""></asp:Label>
                      </li>
                      <li>
                        <asp:Label ID="lblDonationDetail10Text4" runat="server" Text=""></asp:Label>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </asp:Panel>
            </div>
          </div>

        </div>
        <!--Custom Donation--->
        <div class="custom-donation-sect">
          <div class="container">
            <div class="row">
              <div class="col-md-4 col-md-offset-4">

                <div class="input-group">
                  <span class="input-group-addon">$</span>
                  <asp:TextBox ID="txtDonationAmount" runat="server" aria-label="Amount (to the nearest dollar)" AutoPostBack="True" CssClass="form-control"></asp:TextBox>                    
                  <span class="input-group-addon">.00<asp:RequiredFieldValidator ID="rfvDonationAmount" runat="server" ErrorMessage="Donation Amount is Required" ForeColor="Red" ValidationGroup="grpEntryValidation" ControlToValidate="txtDonationAmount">&nbsp;*</asp:RequiredFieldValidator>
                </span>
                </div>

                <div class="custom-control display-amount-box">
                     <asp:CheckBox ID="chkHideFromPublicDisplay" runat="server" CssClass="custom-control-input" />
                     <label class="display-amount" for="dont-display-check">Don’t display amount Publicly&nbsp;</label>
                </div>

              </div>
            </div>
          </div>
        </div>


        <div class="dedication-sect">

          <!---Dedication Type--->
          <div class="dedication-type">
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <span class="donation-number">2</span><span class="section-titles">Dedication</span>
                </div>
              </div>
              <div class="row dedication-inputs">
                <div class="col-md-4 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Dedication Type</label>
                  <asp:DropDownList ID="ddlDedicationType" runat="server" CssClass="form-control">
                  </asp:DropDownList>
                </div>
                <div class="col-md-4 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Name</label>
                      <asp:TextBox ID="txtDedicationName" runat="server" CssClass="form-control" MaxLength="200" placeholder="Dedication Name"></asp:TextBox>
<%--                  <input type="text" class="form-control" id="dedication-name" placeholder="Dedication Name">--%>
                </div>
                <div class="col-md-4 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Contact Info</label>
                  <asp:TextBox ID="txtDedicationContactInfo" runat="server" CssClass="form-control" MaxLength="200" placeholder="Contact Info"></asp:TextBox>
                  <%--<input type="text" class="form-control" id="contact-info" placeholder="Contact Info">--%>
                </div>
              </div>
            </div>
          </div>

          <!---Contact Info--->
          <div class="dedication-type">
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <span class="donation-number">3</span><span class="section-titles">Contact Info</span>
                </div>
              </div>
              <div class="row dedication-inputs">
                <div class="col-md-6 dedication-input-col">
                  <label for="inputEmail3" class="control-label">First Name</label>
                  <asp:RequiredFieldValidator ID="rfvContactInfoFirstName" runat="server" ControlToValidate="txtContactInfoFirstName" ErrorMessage="First Name is Required" ForeColor="Red" ValidationGroup="grpEntryValidation">*</asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtContactInfoFirstName" runat="server" CssClass="form-control" placeholder="First Name" MaxLength="50"></asp:TextBox>
<%--                  <input type="text" class="form-control" id="First-Name" placeholder="First Name">--%>
                </div>
                <div class="col-md-6 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Phone</label>
                  <asp:TextBox ID="txtContactInfoPhone" runat="server" CssClass="form-control" placeholder="555-555-0123" MaxLength="14"></asp:TextBox>
<%--                  <input type="phone" class="form-control" id="phone" placeholder="555-555-0123">--%>
                </div>
                <div class="col-md-6 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Last Name</label>
                  <asp:RequiredFieldValidator ID="rfvContactInfoLastName" runat="server" ControlToValidate="txtContactInfoLastName" ErrorMessage="Last Name is Required" ForeColor="Red" ValidationGroup="grpEntryValidation">*</asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtContactInfoLastName" runat="server" CssClass="form-control" placeholder="Last Name" MaxLength="50"></asp:TextBox>
<%--                  <input type="text" class="form-control" id="Last-Name" placeholder="Last Name">--%>
                </div>
                <div class="col-md-6 dedication-input-col">
                  <label for="inputEmail3" class="control-label">E-Mail Address</label>
                  <asp:RequiredFieldValidator ID="rfvContactInfoEmailAddress" runat="server" ControlToValidate="txtContactInfoEmailAddress" ErrorMessage="E-Mail Address is Required" ForeColor="Red" ValidationGroup="grpEntryValidation">*</asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtContactInfoEmailAddress" runat="server" CssClass="form-control" placeholder="E-mail address" MaxLength="100"></asp:TextBox>
<%--                  <input type="email" class="form-control" id="email-address" placeholder="Contact Info">--%>
                </div>
              </div>
            </div>
          </div>

          <!---Contact Info--->
          <div class="dedication-type">
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <span class="donation-number">4</span><span class="section-titles">Payment Info</span>
                </div>
              </div>
              <div class="row dedication-inputs">
                <div class="col-md-3 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Card Number</label>
                  <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtPaymentInfoCardNumber" ErrorMessage="Card Number is Required" ForeColor="Red" ValidationGroup="grpEntryValidation">*</asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtPaymentInfoCardNumber" runat="server" CssClass="form-control" placeholder="0000-0000-0000-0000" ValidationGroup="grpEntryValidation" MaxLength="20"></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="0000-0000-0000-0000" required>--%>
                </div>
                <div class="col-md-2 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Card Expiration</label>
                  <asp:RequiredFieldValidator ID="rfvCardExpiration" runat="server" ControlToValidate="txtPaymentInfoCardExpiration" ErrorMessage="Card Expiration is Required" ForeColor="Red" ValidationGroup="grpEntryValidation">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPaymentInfoCardExpiration" ErrorMessage="Card Expiration is Invalid (MMYY)" ForeColor="Red" ValidationExpression="\d{4}" ValidationGroup="grpEntryValidation">*</asp:RegularExpressionValidator>
                  <asp:TextBox ID="txtPaymentInfoCardExpiration" runat="server" CssClass="form-control" placeholder="MMYY" ValidationGroup="grpEntryValidation" MaxLength="4"></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="MMYY" required>--%>
                </div>
                <div class="col-md-2 dedication-input-col">
                  <label for="inputEmail3" class="control-label">CVV</label>
                  <asp:RequiredFieldValidator ID="rfvCVV" runat="server" ControlToValidate="txtPaymentInfoCVV" ErrorMessage="CVV is Required" ForeColor="Red" ValidationGroup="grpEntryValidation">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPaymentInfoCVV" ErrorMessage="CVV is Invalid" ForeColor="Red" ValidationExpression="\d{4}|\d{3}" ValidationGroup="grpEntryValidation">*</asp:RegularExpressionValidator>
                  <asp:TextBox ID="txtPaymentInfoCVV" runat="server" CssClass="form-control" placeholder="123" ValidationGroup="grpEntryValidation" MaxLength="4"></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="123" required>--%>
                </div>

                <div class="col-md-6 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Billing Address 1</label>
                  <asp:TextBox ID="txtPaymentInfoBillingAddress1" runat="server" CssClass="form-control" placeholder="Address 1" MaxLength="70"></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="Address 1" required>--%>
                </div>
                <div class="col-md-6 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Billing Address 2</label>
                  <asp:TextBox ID="txtPaymentInfoBillingAddress2" runat="server" CssClass="form-control" placeholder="Address 2" MaxLength="70"></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="Address 2" required>--%>
                </div>

                <div class="col-md-4 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Billing City</label>
                  <asp:TextBox ID="txtPaymentInfoCity" runat="server" CssClass="form-control" placeholder="City" MaxLength="50"></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="City" required/>--%>
                </div>
                <div class="col-md-4 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Billing State</label>
                  <asp:DropDownList ID="ddlPaymentInfoState" runat="server" CssClass="form-control">
                  </asp:DropDownList>
<%--                  <input type="text" class="form-control" placeholder="State" required/>--%>
                </div>
                <div class="col-md-4 dedication-input-col">
                  <label for="inputEmail3" class="control-label">Billing Zip</label>
<asp:RequiredFieldValidator ID="rfvBillingZip" runat="server" ControlToValidate="txtPaymentInfoZip" ErrorMessage="Billing Zip is Required" ForeColor="Red" ValidationGroup="grpEntryValidation">*</asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtPaymentInfoZip" runat="server" CssClass="form-control" placeholder="Zip" MaxLength="10" ValidationGroup="grpEntryValidation"></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="Zip" required/>--%>
                </div>
              </div>

              <div class="row">
                <div class="col-md-12">
                <div class="display-amount-box cover-fees-container">
<%--                  <input type="checkbox" class="custom-control-input" id="dont-display-check">--%>
                  <label class="donator-name" for="dont-display-check">Cover the fees so my donation is fully contributed</label>
                    <asp:CheckBox ID="chkCoverFees" runat="server" CssClass="custom-control-input checkbox-large" AutoPostBack="True" Checked="True" />
                </div>
                    <asp:Button ID="btnDonateNow" runat="server" Text="donate now: $0.00 per month" CssClass="btn btn-success btn-block btn-lg btn-donation" ValidationGroup="grpEntryValidation" />
                </div>
              </div>

            </div>
          </div>

        </div>

        <div class="recent-donations-sect">
          <div class="container">
            <div class="recent-donation-title">Recent Donations</div>
              <asp:DataList ID="dlstRecentDonations" runat="server" ItemStyle-CssClass="recent-donators" CssClass="recent-donators">
                  <ItemStyle CssClass="recent-donators" />
                  <ItemTemplate>
                      <div class="donators-initials"><asp:Label ID="initialsLabel" runat="server" Text='' /></div>
                      <div class="donator-name-date">
                        <div class="donator-name"><asp:Label ID="lblRDFirstName" runat="server" Text='' />&nbsp;<asp:Label ID="lblRDLastName" runat="server" Text='' /></div>
                        <div class="recent-donation-date"><asp:Label ID="lblRDDonationDate" runat="server" Text='' /></div>
                      </div>
                      <div class="donation-amount"><asp:Label ID="lblRDAmount" runat="server" Text='' /></div>
                  </ItemTemplate>
              </asp:DataList>
<%--            <!--- Donations Loop --->
            <div class="recent-donators">
              <div class="donators-initials">JD</div>
              <div class="donator-name-date">
                <div class="donator-name">John Doe</div>
                <div class="recent-donation-date">1 Month Ago</div>
              </div>
              <div class="donation-amount">$10</div>
            </div>
            <!--- Loop Item End --->
            <!--- Donations Loop --->
            <div class="recent-donators">
              <div class="donators-initials">JD</div>
              <div class="donator-name-date">
                <div class="donator-name">John Doe</div>
                <div class="recent-donation-date">1 Month Ago</div>
              </div>
              <div class="donation-amount">$10</div>
            </div>
            <!--- Loop Item End --->
            <!--- Donations Loop --->
            <div class="recent-donators">
              <div class="donators-initials">JD</div>
              <div class="donator-name-date">
                <div class="donator-name">John Doe</div>
                <div class="recent-donation-date">1 Month Ago</div>
              </div>
              <div class="donation-amount">$10</div>
            </div>
            <!--- Loop Item End --->
            <!--- Donations Loop --->
            <div class="recent-donators">
              <div class="donators-initials">JD</div>
              <div class="donator-name-date">
                <div class="donator-name">John Doe</div>
                <div class="recent-donation-date">1 Month Ago</div>
              </div>
              <div class="donation-amount">$10</div>
            </div>
            <!--- Loop Item End --->--%>
          </div>
          <div class="see-more-btn"><asp:LinkButton ID="btnSeeMoreRecentDonations" runat="server">+ See More</asp:LinkButton></div>
          <div class="viewing-count"><asp:Label ID="lblRecentDonationsViewCount" runat="server" Text=""></asp:Label></div>
        </div>

        <div class="footer">
            <asp:Label ID="lblFooterLine1" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblFooterLine2" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblFooterCopyright" runat="server" Text=""></asp:Label>
           
            <asp:LinkButton ID="btnPopupWaitTarget" runat="server"></asp:LinkButton>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="../common/js/bootstrap.js"></script>
        <script src="../common/js/app.js"></script>
            <asp:Panel ID="pnlNonWorkingDemoBottom" runat="server" CssClass="non-working-demo-panel">For Demo Purposes Only. To activate call 888-555-5555</asp:Panel>

</ContentTemplate>
            </asp:UpdatePanel>
</form>
    </body>
</html>
