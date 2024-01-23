part of base;

class CustomDescriptionTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final Widget? suffix;
  final bool? isOptional;
  final String? name;
  final String? emptyMessage;
  final bool? isSecure;
  final String? regex;
  final int? maxLine;
  final int? minLine;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final String? validationMessage;
  final TextInputType? inputType;
  const CustomDescriptionTextField({Key? key, required this.controller,
    bool? isOptional,
    required this.hint, this.suffix,
    this.isSecure, this.inputType, this.name, this.emptyMessage, this.regex, this.validationMessage, this.textInputAction, this.focusNode, this.onEditingComplete, this.maxLine, this.minLine}) :
        isOptional = isOptional ?? true,
        super(key: key);

  @override
  State<CustomDescriptionTextField> createState() => _CustomRoundedTextFieldState();
}

class _CustomRoundedTextFieldState extends State<CustomDescriptionTextField> {
  String? error;
  String? validator(String? value){
    if (widget.isOptional! && (value == null || value.isTrimEmpty)) return null;
    if (value == null) return widget.emptyMessage ?? "Please Enter ${widget.name}.";
    if (value.isTrimEmpty) return widget.emptyMessage ?? "Please Enter ${widget.name}.";
    if (widget.regex != null) {
      final isMatch = RegExp(widget.regex!).hasMatch(value);
      if (!isMatch) {
        return widget.validationMessage ?? "Please Enter Valid ${widget.name}.";
      }
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: kLightGrayColor,width: 1.sp),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      minLines: widget.minLine,
                      maxLines: widget.maxLine,
                      cursorColor: kPrimaryColor,
                      focusNode: widget.focusNode,
                      onEditingComplete: widget.onEditingComplete,
                      style: CustomTextStyle.lightTextFieldStyle,
                      keyboardType: widget.inputType,
                      obscureText: widget.isSecure ?? false,
                      textInputAction: widget.textInputAction,
                      onChanged: (value) {
                        setState(() {
                          error = validator(value);
                        });
                      },
                      validator: (value) {
                        setState(() {
                          error = validator(value);
                        });
                        return error;
                      },
                      controller: widget.controller,
                      decoration:  InputDecoration(
                          errorStyle: const TextStyle(height: 0,color: Colors.transparent,fontSize: 0),
                          border: InputBorder.none,
                          hintText: "",
                          contentPadding: EdgeInsets.only(left: 15.sp,top: 5.sp)
                      ),
                    ),
                  ),
                  if(widget.suffix != null)
                    widget.suffix!,
                  SizedBox(width: 10.sp),
                ],
              ),
              if(widget.controller.text.isEmpty)
                Center(child: Row(
                  children: [
                    SizedBox(width: 15.sp),
                    Padding(
                      padding: EdgeInsets.only(top: 5.sp),
                      child: Text.rich(TextSpan(
                          children: [
                            TextSpan(text: "${widget.hint} ", style: CustomTextStyle.regularFont16Style,
                                children: [
                                  if(widget.isOptional == false)
                                    TextSpan(text: "*",style: TextStyle(color: Colors.red))
                                ]
                            ),


                          ]
                      )),
                    ),
                  ],)),

            ],
          ),
        ),
        if(error != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 5.sp),
                      Text(error ?? "", style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red)),
                      SizedBox(height: 5.sp),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}








