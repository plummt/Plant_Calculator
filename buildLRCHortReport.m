function [RptgenML_CForm1] = buildLRCHortReport
%BUILDLRCHORTREPORT
 
%  Auto-generated by MATLAB on 24-Aug-2017 11:06:28
 
% Create RptgenML.CForm
RptgenML_CForm1 = RptgenML.CForm('isAutoSaveOnGenerate',true,...
'Format','dom-pdf-direct',...
'Stylesheet','LRC_Hort_Metrics');
% setedit(RptgenML_CForm1);
 
% Create rptgen.cform_template_hole
rptgen_cform_template_hole1 = rptgen.cform_template_hole('HoleType','Block',...
'HoleID','#start#');
setParent(rptgen_cform_template_hole1,RptgenML_CForm1);
 
