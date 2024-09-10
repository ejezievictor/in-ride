part of '../../controller/otp_controller.dart';

class _OtpView extends StatelessView<OtpScreen, OtpController> {
  const _OtpView(super.key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: SafeArea(
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
              Space.h(70),
              CustomButton(
                height: 70,
                text: 'Continue',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
