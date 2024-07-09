enum CustomBottomNavigationItems {
  home,
  timetable,
  homework,
  library,
  addOn,
}

enum ProgressIndicatorType {
  linear,
  circular,
}

enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

enum ChatType {
  personal,
  group,
}

enum HomeWorkAndNoteScreenType {
  homeworkScreen,
  noteScreen,
}

enum PaymentStatusType {
  paid,
  pending,
  transaction,
}

enum AddOnTabsType { academic, nonAcademic }

enum DoucumentType {
  PDF,
  JPG,
  JPEG,
  PNG,
}

enum OrderStatus {
  PAID,
  ACTIVE,
  FAILED,
}

bool isBool(String val) {
  if (val == '1') {
    return true;
  } else if (val == '0') {
    false;
  }
  return false;
}

enum ReceiptType {
  share,
  view,
  download,
}

enum UserTypes { staff, student, parent }

UserTypes getUserType(String userType) {
  switch (userType) {
    case "2":
      return UserTypes.student;

    case "3":
      return UserTypes.parent;

    case "5":
      return UserTypes.staff;

    default:
      return UserTypes.student;
  }
}

enum LeaveStatusType {
  Requested,
  Rejected,
  Sanctioned,
  Cancel,
}

LeaveStatusType getLeaveStatusType(String status) {
  switch (status) {
    case "Requested":
      return LeaveStatusType.Requested;
    case "Cancel":
      return LeaveStatusType.Cancel;
    case "Rejected":
      return LeaveStatusType.Rejected;
    case "Sanctioned":
      return LeaveStatusType.Rejected;

    default:
      return LeaveStatusType.Sanctioned;
  }
}

enum NonAcademicTypes { all, fiction, non_fiction, bookmarks }

enum SeeAllNonAcademicTypes { subCategory, medium }

extension GetTypString on SeeAllNonAcademicTypes {
  String toName() {
    switch (this) {
      case SeeAllNonAcademicTypes.subCategory:
        return "Sub categories";
      case SeeAllNonAcademicTypes.medium:
        return "Medium";
    }
  }
}

enum DocType { video, audio, pdf, image, other, epub }

extension DocTypeExtension on DocType {
  static DocType fromString(String value) {
    switch (value.toLowerCase()) {
      case 'mp4':
      case 'avi':
      case 'mov':
        return DocType.video;
      case 'mp3':
      case 'wav':
        return DocType.audio;
      case 'pdf':
        return DocType.pdf;
      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'gif':
        return DocType.image;

      case 'epub':
        return DocType.epub;
      default:
        return DocType.other;
    }
  }

  String get name {
    switch (this) {
      case DocType.video:
        return 'video';
      case DocType.audio:
        return 'audio';
      case DocType.pdf:
        return 'pdf';
      case DocType.image:
        return 'image';
      case DocType.other:
        return 'other';
      case DocType.epub:
        return "epub";
    }
  }
}
