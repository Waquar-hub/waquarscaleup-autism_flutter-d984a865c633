import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel(
      {required this.imageAssetPath, required this.title, required this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = [];

  SliderModel sliderModel =
      new SliderModel(title: "", imageAssetPath: "", desc: "");

  //1st slide
  sliderModel
      .setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
          "Quis sed vestibulum dolor arcu. Gravida ac ultrices .");

  sliderModel.setImageAssetPath("assets/image.png");
  slides.add(sliderModel);
//2nd slide
  sliderModel.setDesc(
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
    "Quis sed vestibulum dolor arcu. Gravida ac ultrices .",
  );

  sliderModel.setImageAssetPath("assets/image.png");
  slides.add(sliderModel);
// 3rd slide
  sliderModel
      .setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
          "Quis sed vestibulum dolor arcu. Gravida ac ultrices .");

  sliderModel.setImageAssetPath("assets/image.png");
  slides.add(sliderModel);

  return slides;
}
