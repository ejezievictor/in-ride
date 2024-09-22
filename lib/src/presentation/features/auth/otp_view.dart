part of '../../controller/otp_controller.dart';

class _OtpView extends StatelessView<OtpScreen, OtpController> {
  const _OtpView(super.key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left,
            size: 16.h,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.h(12),
                Text(
                  'Insert the OTP code',
                  style: AppTheme.displayPSmallBold.copyWith(
                      color: Palette.headerTextColor,
                      fontWeight: FontWeight.w600),
                ),

                // Text(
                //   'Enter the code sent to Passengeremail@example.com',
                //   style: AppTheme.displaySmallBold.copyWith(
                //       color: Palette.greyTextColor,
                //       fontWeight: FontWeight.w600),
                // ),
                CustomTextWidget(
                  text: 'weHaveSentCodeToEmail'.trParams(
                    {'email': 'Passengeremail@example.com'},
                  ),
                  highlightedText: 'Passengeremail',
                  style: AppTheme.displaySmallMedium.copyWith(
                      color: Palette.greyTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                  highlightedWordStyle: AppTheme.displaySmallMedium.copyWith(
                      color: Palette.greyTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Space.h(14),
                CustomPinField(
                  onChanged: (value) => {},
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              height: 62,
              text: 'Continue',
              onPressed: () {},
            ),
          ),
          Space.h(15),
        ],
      ),
    );
  }
}
