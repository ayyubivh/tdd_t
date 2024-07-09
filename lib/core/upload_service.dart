import 'dart:io';
import 'package:image_picker/image_picker.dart';

class UploadService {
  final ImagePicker _picker = ImagePicker();

  // Method to pick an image from the gallery
  Future<File?> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    return pickedFile != null ? File(pickedFile.path) : null;
  }

  // Method to pick an image from the camera
  Future<File?> pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    return pickedFile != null ? File(pickedFile.path) : null;
  }

  // Method to upload the image to the server
  // Future<http.Response?> uploadImage(File imageFile, String uploadUrl) async {
  //   try {
  //     var request = http.MultipartRequest('POST', Uri.parse(uploadUrl));

  //     // Get the mime type of the file
  //     String? mimeType = lookupMimeType(imageFile.path);
  //     if (mimeType == null) return null;
  //     var mimeTypeData = mimeType.split('/');

  //     request.files.add(
  //       http.MultipartFile(
  //         'file',
  //         imageFile.readAsBytes().asStream(),
  //         imageFile.lengthSync(),
  //         filename: basename(imageFile.path),
  //         contentType: http.MediaType(mimeTypeData[0], mimeTypeData[1]),
  //       ),
  //     );

  //     var response = await request.send();
  //     return await http.Response.fromStream(response);
  //   } catch (e) {
  //     print("Error uploading image: $e");
  //     return null;
  //   }
  // }
}
