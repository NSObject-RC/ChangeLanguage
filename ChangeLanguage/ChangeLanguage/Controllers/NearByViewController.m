//
//  NearByViewController.m
//  ChangeLanguage
//
//  Created by RongCheng on 16/7/21.
//  Copyright © 2016年 RongCheng. All rights reserved.
//

#import "NearByViewController.h"

@interface NearByViewController ()

@end

@implementation NearByViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=Localized (@"附近");
   
    /**
     *  Xcode自带字体样式查询:http://iosfonts.com/ 
     */
    UILabel * title=[[UILabel alloc]initWithFrame:CGRectMake((WIDTH-100)/2, 100, 100, 30)];
    title.text=Localized(@"关雎"); 
    title.font=[UIFont boldSystemFontOfSize:20];
    title.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:title];
    
    for (int i =0; i<5; i++){
        UILabel * lab =[[UILabel alloc]initWithFrame:CGRectMake(0, 150+40*i, WIDTH, 30)];
        lab.text=@[Localized(@"关关雎鸠，在河之洲。窈窕淑女，君子好逑。"),Localized(@"参差荇菜，左右流之。窈窕淑女，寤寐求之。"),Localized(@"求之不得，寤寐思服。悠哉悠哉，辗转反侧。"),Localized(@"参差荇菜，左右采之。窈窕淑女，琴瑟友之。"),Localized(@"参差荇菜，左右芼之。窈窕淑女，钟鼓乐之。")][i];
        lab.font=[UIFont fontWithName:@"FZXKJW--GB1-0" size:17];
        lab.textAlignment=NSTextAlignmentCenter;
        [self.view addSubview:lab];
    }
}
/**
 * 含以下字体
 
    Font: Copperplate-Light
	Font: Copperplate
	Font: Copperplate-Bold
	Font: IowanOldStyle-Italic
	Font: IowanOldStyle-Roman
	Font: IowanOldStyle-BoldItalic
	Font: IowanOldStyle-Bold
	Font: KohinoorTelugu-Regular
	Font: KohinoorTelugu-Medium
	Font: KohinoorTelugu-Light
	Font: CourierNewPS-BoldMT
	Font: CourierNewPS-ItalicMT
	Font: CourierNewPSMT
	Font: CourierNewPS-BoldItalicMT
	Font: GillSans-Italic
	Font: GillSans-Bold
	Font: GillSans-BoldItalic
	Font: GillSans-LightItalic
	Font: GillSans
	Font: GillSans-Light
	Font: GillSans-SemiBold
	Font: GillSans-SemiBoldItalic
	Font: GillSans-UltraBold
	Font: MarkerFelt-Thin
	Font: MarkerFelt-Wide
	Font: AppleSDGothicNeo-Bold
	Font: AppleSDGothicNeo-Thin
	Font: AppleSDGothicNeo-UltraLight
	Font: AppleSDGothicNeo-Regular
	Font: AppleSDGothicNeo-Light
	Font: AppleSDGothicNeo-Medium
	Font: AppleSDGothicNeo-SemiBold
	Font: Thonburi
	Font: Thonburi-Bold
	Font: Thonburi-Light
	Font: AvenirNextCondensed-BoldItalic
	Font: AvenirNextCondensed-Heavy
	Font: AvenirNextCondensed-Medium
	Font: AvenirNextCondensed-Regular
	Font: AvenirNextCondensed-HeavyItalic
	Font: AvenirNextCondensed-MediumItalic
	Font: AvenirNextCondensed-Italic
	Font: AvenirNextCondensed-UltraLightItalic
	Font: AvenirNextCondensed-UltraLight
	Font: AvenirNextCondensed-DemiBold
	Font: AvenirNextCondensed-Bold
	Font: AvenirNextCondensed-DemiBoldItalic
	Font: TamilSangamMN
	Font: TamilSangamMN-Bold
	Font: HelveticaNeue-Italic
	Font: HelveticaNeue-Bold
	Font: HelveticaNeue-UltraLight
	Font: HelveticaNeue-CondensedBlack
	Font: HelveticaNeue-BoldItalic
	Font: HelveticaNeue-CondensedBold
	Font: HelveticaNeue-Medium
	Font: HelveticaNeue-Light
	Font: HelveticaNeue-Thin
	Font: HelveticaNeue-ThinItalic
	Font: HelveticaNeue-LightItalic
	Font: HelveticaNeue-UltraLightItalic
	Font: HelveticaNeue-MediumItalic
	Font: HelveticaNeue
	Font: GurmukhiMN-Bold
	Font: GurmukhiMN
	Font: TimesNewRomanPSMT
	Font: TimesNewRomanPS-BoldItalicMT
	Font: TimesNewRomanPS-ItalicMT
	Font: TimesNewRomanPS-BoldMT
	Font: Georgia-BoldItalic
	Font: Georgia
	Font: Georgia-Italic
	Font: Georgia-Bold
	Font: AppleColorEmoji
	Font: ArialRoundedMTBold
	Font: Kailasa-Bold
	Font: Kailasa
	Font: KohinoorDevanagari-Light
	Font: KohinoorDevanagari-Regular
	Font: KohinoorDevanagari-Semibold
	Font: KohinoorBangla-Semibold
	Font: KohinoorBangla-Regular
	Font: KohinoorBangla-Light
	Font: ChalkboardSE-Bold
	Font: ChalkboardSE-Light
	Font: ChalkboardSE-Regular
	Font: SinhalaSangamMN-Bold
	Font: SinhalaSangamMN
	Font: PingFangTC-Medium
	Font: PingFangTC-Regular
	Font: PingFangTC-Light
	Font: PingFangTC-Ultralight
	Font: PingFangTC-Semibold
	Font: PingFangTC-Thin
	Font: GujaratiSangamMN-Bold
	Font: GujaratiSangamMN
	Font: DamascusLight
	Font: DamascusBold
	Font: DamascusSemiBold
	Font: DamascusMedium
	Font: Damascus
	Font: Noteworthy-Light
	Font: Noteworthy-Bold
	Font: GeezaPro
	Font: GeezaPro-Bold
	Font: Avenir-Medium
	Font: Avenir-HeavyOblique
	Font: Avenir-Book
	Font: Avenir-Light
	Font: Avenir-Roman
	Font: Avenir-BookOblique
	Font: Avenir-Black
	Font: Avenir-MediumOblique
	Font: Avenir-BlackOblique
	Font: Avenir-Heavy
	Font: Avenir-LightOblique
	Font: Avenir-Oblique
	Font: AcademyEngravedLetPlain
	Font: DiwanMishafi
	Font: Futura-CondensedMedium
	Font: Futura-CondensedExtraBold
	Font: Futura-Medium
	Font: Futura-MediumItalic
	Font: Farah
	Font: KannadaSangamMN
	Font: KannadaSangamMN-Bold
	Font: ArialHebrew-Bold
	Font: ArialHebrew-Light
	Font: ArialHebrew
	Font: ArialMT
	Font: Arial-BoldItalicMT
	Font: Arial-BoldMT
	Font: Arial-ItalicMT
	Font: PartyLetPlain
	Font: Chalkduster
	Font: HoeflerText-Italic
	Font: HoeflerText-Regular
	Font: HoeflerText-Black
	Font: HoeflerText-BlackItalic
	Font: Optima-Regular
	Font: Optima-ExtraBlack
	Font: Optima-BoldItalic
	Font: Optima-Italic
	Font: Optima-Bold
	Font: Palatino-Bold
	Font: Palatino-Roman
	Font: Palatino-BoldItalic
	Font: Palatino-Italic
	Font: LaoSangamMN
	Font: MalayalamSangamMN-Bold
	Font: MalayalamSangamMN
	Font: AlNile-Bold
	Font: AlNile
	Font: BradleyHandITCTT-Bold
	Font: PingFangHK-Ultralight
	Font: PingFangHK-Semibold
	Font: PingFangHK-Thin
	Font: PingFangHK-Light
	Font: PingFangHK-Regular
	Font: PingFangHK-Medium
	Font: Trebuchet-BoldItalic
	Font: TrebuchetMS
	Font: TrebuchetMS-Bold
	Font: TrebuchetMS-Italic
	Font: Helvetica-Bold
	Font: Helvetica
	Font: Helvetica-LightOblique
	Font: Helvetica-Oblique
	Font: Helvetica-BoldOblique
	Font: Helvetica-Light
	Font: Courier-BoldOblique
	Font: Courier
	Font: Courier-Bold
	Font: Courier-Oblique
	Font: Cochin-Bold
	Font: Cochin
	Font: Cochin-Italic
	Font: Cochin-BoldItalic
	Font: HiraMinProN-W6
	Font: HiraMinProN-W3
	Font: DevanagariSangamMN
	Font: DevanagariSangamMN-Bold
	Font: OriyaSangamMN
	Font: OriyaSangamMN-Bold
	Font: SnellRoundhand-Bold
	Font: SnellRoundhand
	Font: SnellRoundhand-Black
	Font: ZapfDingbatsITC
	Font: FZXKJW--GB1-0
	Font: BodoniSvtyTwoITCTT-Bold
	Font: BodoniSvtyTwoITCTT-Book
	Font: BodoniSvtyTwoITCTT-BookIta
	Font: Verdana-Italic
	Font: Verdana-BoldItalic
	Font: Verdana
	Font: Verdana-Bold
	Font: AmericanTypewriter-CondensedLight
	Font: AmericanTypewriter
	Font: AmericanTypewriter-CondensedBold
	Font: AmericanTypewriter-Light
	Font: AmericanTypewriter-Bold
	Font: AmericanTypewriter-Condensed
	Font: AvenirNext-UltraLight
	Font: AvenirNext-UltraLightItalic
	Font: AvenirNext-Bold
	Font: AvenirNext-BoldItalic
	Font: AvenirNext-DemiBold
	Font: AvenirNext-DemiBoldItalic
	Font: AvenirNext-Medium
	Font: AvenirNext-HeavyItalic
	Font: AvenirNext-Heavy
	Font: AvenirNext-Italic
	Font: AvenirNext-Regular
	Font: AvenirNext-MediumItalic
	Font: Baskerville-Italic
	Font: Baskerville-SemiBold
	Font: Baskerville-BoldItalic
	Font: Baskerville-SemiBoldItalic
	Font: Baskerville-Bold
	Font: Baskerville
	Font: KhmerSangamMN
	Font: Didot-Italic
	Font: Didot-Bold
	Font: Didot
	Font: SavoyeLetPlain
	Font: BodoniOrnamentsITCTT
	Font: Symbol
	Font: Menlo-Italic
	Font: Menlo-Bold
	Font: Menlo-Regular
	Font: Menlo-BoldItalic
	Font: BodoniSvtyTwoSCITCTT-Book
	Font: Papyrus
	Font: Papyrus-Condensed
	Font: HiraginoSans-W3
	Font: HiraginoSans-W6
	Font: PingFangSC-Ultralight
	Font: PingFangSC-Regular
	Font: PingFangSC-Semibold
	Font: PingFangSC-Thin
	Font: PingFangSC-Light
	Font: PingFangSC-Medium
	Font: EuphemiaUCAS-Italic
	Font: EuphemiaUCAS
	Font: EuphemiaUCAS-Bold
	Font: Zapfino
	Font: BodoniSvtyTwoOSITCTT-Book
	Font: BodoniSvtyTwoOSITCTT-Bold
	Font: BodoniSvtyTwoOSITCTT-BookIt
*/
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
