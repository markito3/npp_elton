void M2pidat()
{
//=========Macro generated from canvas: c1_n7/c1_n7
//=========  (Tue Apr 14 16:19:48 2020) by ROOT version6.08/06
   TCanvas *c1_n7 = new TCanvas("c1_n7", "c1_n7",1022,229,871,741);
   gStyle->SetOptFit(1);
   c1_n7->ToggleToolTips();
   c1_n7->Range(0.07142859,-538.0207,0.9285714,3048.784);
   c1_n7->SetFillColor(0);
   c1_n7->SetBorderMode(0);
   c1_n7->SetBorderSize(2);
   c1_n7->SetLeftMargin(0.15);
   c1_n7->SetRightMargin(0.15);
   c1_n7->SetBottomMargin(0.15);
   c1_n7->SetFrameBorderMode(0);
   c1_n7->SetFrameBorderMode(0);
   
   TH1F *M2piacc_g1V00__1 = new TH1F("M2piacc_g1V00__1","Invariant Mass of #pi#pi",12,0.2,0.8);
   M2piacc_g1V00__1->SetBinContent(2,662.5797);
   M2piacc_g1V00__1->SetBinContent(3,2452.836);
   M2piacc_g1V00__1->SetBinContent(4,2074.057);
   M2piacc_g1V00__1->SetBinContent(5,1419.913);
   M2piacc_g1V00__1->SetBinContent(6,903.9566);
   M2piacc_g1V00__1->SetBinContent(7,596.0789);
   M2piacc_g1V00__1->SetBinContent(8,402.0308);
   M2piacc_g1V00__1->SetBinContent(9,276.8122);
   M2piacc_g1V00__1->SetBinContent(10,186.0328);
   M2piacc_g1V00__1->SetBinContent(11,119.3039);
   M2piacc_g1V00__1->SetBinContent(12,85.77319);
   M2piacc_g1V00__1->SetBinError(2,50.27672);
   M2piacc_g1V00__1->SetBinError(3,109.1676);
   M2piacc_g1V00__1->SetBinError(4,85.98842);
   M2piacc_g1V00__1->SetBinError(5,57.61746);
   M2piacc_g1V00__1->SetBinError(6,36.7844);
   M2piacc_g1V00__1->SetBinError(7,23.71828);
   M2piacc_g1V00__1->SetBinError(8,15.79215);
   M2piacc_g1V00__1->SetBinError(9,10.79879);
   M2piacc_g1V00__1->SetBinError(10,7.340728);
   M2piacc_g1V00__1->SetBinError(11,4.978746);
   M2piacc_g1V00__1->SetBinError(12,3.381477);
   M2piacc_g1V00__1->SetEntries(120);
   
   TPaveStats *ptstats = new TPaveStats(0.78,0.575,0.98,0.935,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   TText *AText = ptstats->AddText("M2piacc_g1V00");
   AText->SetTextSize(0.0552);
   AText = ptstats->AddText("Entries = 120    ");
   AText = ptstats->AddText("Mean  = 0.4123");
   AText = ptstats->AddText("Std Dev   = 0.1057");
   AText = ptstats->AddText("Underflow =      0");
   AText = ptstats->AddText("Overflow  =      0");
   ptstats->SetOptStat(111111);
   ptstats->SetOptFit(111111);
   ptstats->Draw();
   M2piacc_g1V00__1->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(M2piacc_g1V00__1);
   M2piacc_g1V00__1->SetLineColor(2);
   M2piacc_g1V00__1->GetXaxis()->SetRange(1,120);
   M2piacc_g1V00__1->GetXaxis()->SetLabelFont(42);
   M2piacc_g1V00__1->GetXaxis()->SetLabelSize(0.035);
   M2piacc_g1V00__1->GetXaxis()->SetTitleSize(0.035);
   M2piacc_g1V00__1->GetXaxis()->SetTitleFont(42);
   M2piacc_g1V00__1->GetYaxis()->SetLabelFont(42);
   M2piacc_g1V00__1->GetYaxis()->SetLabelSize(0.035);
   M2piacc_g1V00__1->GetYaxis()->SetTitleSize(0.035);
   M2piacc_g1V00__1->GetYaxis()->SetTitleFont(42);
   M2piacc_g1V00__1->GetZaxis()->SetLabelFont(42);
   M2piacc_g1V00__1->GetZaxis()->SetLabelSize(0.035);
   M2piacc_g1V00__1->GetZaxis()->SetTitleSize(0.035);
   M2piacc_g1V00__1->GetZaxis()->SetTitleFont(42);
   M2piacc_g1V00__1->Draw("");
   
   TPaveText *pt = new TPaveText(0.2834407,0.94,0.7165593,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   AText = pt->AddText("Invariant Mass of #pi#pi");
   pt->Draw();
   c1_n7->Modified();
   c1_n7->cd();
   c1_n7->SetSelected(c1_n7);
}
