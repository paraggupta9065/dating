import 'package:tru_dating/core/app_export.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

/// A controller class for the VideoScreen.
///
/// This class manages the state of the VideoScreen, including the
/// current videoModelObj
class VideoUploadController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> uploadVideo(String userId, String videoPath) async {
    try {
      isLoading(true);

      var request = http.MultipartRequest(
        'POST',
        Uri.parse('https://tru-dating.vaininnovation.in/api/upload-video'),
      );

      request.fields['user_id'] = userId;
      request.files.add(await http.MultipartFile.fromPath('video', videoPath));

      var response = await request.send();

      if (response.statusCode == 200) {
        print('Video uploaded successfully');
      } else {
        print('Failed to upload video. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error uploading video: $e');
    } finally {
      isLoading(false);
    }
  }
}



