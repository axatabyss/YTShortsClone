// To parse this JSON data, do
//
//     final shortsModel = shortsModelFromJson(jsonString);

import 'dart:convert';

ShortsModel shortsModelFromJson(String str) => ShortsModel.fromJson(json.decode(str));

String shortsModelToJson(ShortsModel data) => json.encode(data.toJson());

class ShortsModel {
  dynamic statusCode;
  dynamic minCursor;
  dynamic maxCursor;
  dynamic hasMore;
  List<AwemeList>? awemeList;
  dynamic homeModel;
  dynamic refreshClear;
  Extra? extra;
  LogPb? logPb;
  List<dynamic>? preloadAds;
  dynamic preloadAwemes;
  LogInfo? logInfo;

  ShortsModel(
      {this.statusCode,
        this.minCursor,
        this.maxCursor,
        this.hasMore,
        this.awemeList,
        this.homeModel,
        this.refreshClear,
        this.extra,
        this.logPb,
        this.preloadAds,
        this.preloadAwemes,
        this.logInfo
      });

  ShortsModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    minCursor = json['min_cursor'];
    maxCursor = json['max_cursor'];
    hasMore = json['has_more'];
    if (json['aweme_list'] != null) {
      awemeList = <AwemeList>[];
      json['aweme_list'].forEach((v) {
        awemeList!.add(AwemeList.fromJson(v));
      });
    }
    homeModel = json['home_model'];
    refreshClear = json['refresh_clear'];
    extra = json['extra'] != null ? Extra.fromJson(json['extra']) : null;
    logPb = json['log_pb'] != null ? LogPb.fromJson(json['log_pb']) : null;
    if (json['preload_ads'] != null) {
      preloadAds = <dynamic>[];
      json['preload_ads'].forEach((v) {
        preloadAds!.add(v);
      });
    }
    preloadAwemes = json['preload_awemes'];
    logInfo = json['log_info'] != null
        ? LogInfo.fromJson(json['log_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status_code'] = statusCode;
    data['min_cursor'] = minCursor;
    data['max_cursor'] = maxCursor;
    data['has_more'] = hasMore;
    if (awemeList != null) {
      data['aweme_list'] = awemeList!.map((v) => v.toJson()).toList();
    }
    data['home_model'] = homeModel;
    data['refresh_clear'] = refreshClear;
    if (extra != null) {
      data['extra'] = extra!.toJson();
    }
    if (logPb != null) {
      data['log_pb'] = logPb!.toJson();
    }
    if (preloadAds != null) {
      data['preload_ads'] = preloadAds!.map((v) => v!.toJson()).toList();
    }
    data['preload_awemes'] = preloadAwemes;
    if (logInfo != null) {
      data['log_info'] = logInfo!.toJson();
    }
    return data;
  }
}

class AwemeList {
  String? awemeId;
  String? desc;
  dynamic createTime;
  Author? author;
  Music? music;
  List<ChaList>? chaList;
  Video? video;
  String? shareUrl;
  dynamic userDigged;
  Statistics? statistics;
  Status? status;
  dynamic rate;
  List<TextExtra>? textExtra;
  dynamic isTop;
  AvatarThumb? labelTop;
  ShareInfo? shareInfo;
  String? distance;
  List<dynamic>? videoLabels;
  bool? isVr;
  bool? isAds;
  dynamic awemeType;
  bool? cmtSwt;
  dynamic imageInfos;
  RiskInfos? riskInfos;
  bool? isRelieve;
  String? sortLabel;
  dynamic position;
  dynamic uniqidPosition;
  dynamic authorUserId;
  dynamic bodydanceScore;
  dynamic geofencing;
  dynamic isHashTag;
  bool? isPgcshow;
  String? region;
  List<dynamic>? videoText;
  dynamic collectStat;
  dynamic labelTopText;
  String? groupId;
  bool? preventDownload;
  dynamic nicknamePosition;
  dynamic challengePosition;
  dynamic itemCommentSettings;
  bool? withPromotionalMusic;
  dynamic longVideo;
  dynamic itemDuet;
  dynamic itemReact;
  String? descLanguage;
  List<InteractionStickers>? interactionStickers;
  String? miscInfo;
  dynamic originCommentIds;
  dynamic commerceConfigData;
  dynamic distributeType;
  VideoControl? videoControl;
  bool? hasVsEntry;
  CommerceInfo? commerceInfo;
  bool? needVsEntry;
  dynamic anchors;
  dynamic hybridLabel;
  bool? withSurvey;
  dynamic geofencingRegions;
  AwemeAcl? awemeAcl;
  dynamic coverLabels;
  List<dynamic>? maskInfos;
  dynamic searchHighlight;
  bool? playlistBlocked;
  dynamic greenScreenMaterials;
  InteractPermission? interactPermission;
  dynamic questionList;
  String? contentDesc;
  List<ContentDescExtra>? contentDescExtra;
  dynamic productsInfo;
  dynamic followUpPublishFromId;
  bool? disableSearchTrendingBar;
  dynamic musicBeginTimeInMs;
  dynamic musicEndTimeInMs;
  String? itemDistributeSource;
  dynamic itemSourceCategory;
  dynamic brandedContentAccounts;
  bool? isDescriptionTranslatable;
  String? followUpItemIdGroups;
  bool? isTextStickerTranslatable;
  String? textStickerMajorLang;
  OriginalClientText? originalClientText;
  String? musicSelectedFrom;
  dynamic ttsVoiceIds;
  dynamic referenceTtsVoiceIds;
  dynamic voiceFilterIds;
  dynamic referenceVoiceFilterIds;
  dynamic musicTitleStyle;
  CommentConfig? commentConfig;
  Music? addedSoundMusicInfo;
  String? originVolume;
  String? musicVolume;
  bool? supportDanmaku;
  bool? hasDanmaku;
  dynamic mufCommentInfoV2;
  dynamic behindTheSongMusicIds;
  dynamic behindTheSongVideoMusicIds;
  dynamic contentOriginalType;
  String? shootTabName;
  String? contentType;
  dynamic contentSizeType;
  dynamic operatorBoostInfo;
  LogInfo? logInfo;
  String? mainArchCommon;
  AigcInfo? aigcInfo;
  dynamic banners;
  dynamic pickedUsers;
  dynamic commentTopbarInfo;
  PlaylistInfo? playlistInfo;
  SuggestWords? suggestWords;

  AwemeList(
      {this.awemeId,
        this.desc,
        this.createTime,
        this.author,
        this.music,
        this.chaList,
        this.video,
        this.shareUrl,
        this.userDigged,
        this.statistics,
        this.status,
        this.rate,
        this.textExtra,
        this.isTop,
        this.labelTop,
        this.shareInfo,
        this.distance,
        this.videoLabels,
        this.isVr,
        this.isAds,
        this.awemeType,
        this.cmtSwt,
        this.imageInfos,
        this.riskInfos,
        this.isRelieve,
        this.sortLabel,
        this.position,
        this.uniqidPosition,
        this.authorUserId,
        this.bodydanceScore,
        this.geofencing,
        this.isHashTag,
        this.isPgcshow,
        this.region,
        this.videoText,
        this.collectStat,
        this.labelTopText,
        this.groupId,
        this.preventDownload,
        this.nicknamePosition,
        this.challengePosition,
        this.itemCommentSettings,
        this.withPromotionalMusic,
        this.longVideo,
        this.itemDuet,
        this.itemReact,
        this.descLanguage,
        this.interactionStickers,
        this.miscInfo,
        this.originCommentIds,
        this.commerceConfigData,
        this.distributeType,
        this.videoControl,
        this.hasVsEntry,
        this.commerceInfo,
        this.needVsEntry,
        this.anchors,
        this.hybridLabel,
        this.withSurvey,
        this.geofencingRegions,
        this.awemeAcl,
        this.coverLabels,
        this.maskInfos,
        this.searchHighlight,
        this.playlistBlocked,
        this.greenScreenMaterials,
        this.interactPermission,
        this.questionList,
        this.contentDesc,
        this.contentDescExtra,
        this.productsInfo,
        this.followUpPublishFromId,
        this.disableSearchTrendingBar,
        this.musicBeginTimeInMs,
        this.musicEndTimeInMs,
        this.itemDistributeSource,
        this.itemSourceCategory,
        this.brandedContentAccounts,
        this.isDescriptionTranslatable,
        this.followUpItemIdGroups,
        this.isTextStickerTranslatable,
        this.textStickerMajorLang,
        this.originalClientText,
        this.musicSelectedFrom,
        this.ttsVoiceIds,
        this.referenceTtsVoiceIds,
        this.voiceFilterIds,
        this.referenceVoiceFilterIds,
        this.musicTitleStyle,
        this.commentConfig,
        this.addedSoundMusicInfo,
        this.originVolume,
        this.musicVolume,
        this.supportDanmaku,
        this.hasDanmaku,
        this.mufCommentInfoV2,
        this.behindTheSongMusicIds,
        this.behindTheSongVideoMusicIds,
        this.contentOriginalType,
        this.shootTabName,
        this.contentType,
        this.contentSizeType,
        this.operatorBoostInfo,
        this.logInfo,
        this.mainArchCommon,
        this.aigcInfo,
        this.banners,
        this.pickedUsers,
        this.commentTopbarInfo,
        this.playlistInfo,
        this.suggestWords});

  AwemeList.fromJson(Map<String, dynamic> json) {
    awemeId = json['aweme_id'];
    desc = json['desc'];
    createTime = json['create_time'];
    author =
    json['author'] != null ? Author.fromJson(json['author']) : null;
    music = json['music'] != null ? Music.fromJson(json['music']) : null;
    if (json['cha_list'] != null) {
      chaList = <ChaList>[];
      json['cha_list'].forEach((v) {
        chaList!.add(ChaList.fromJson(v));
      });
    }
    video = json['video'] != null ? Video.fromJson(json['video']) : null;
    shareUrl = json['share_url'];
    userDigged = json['user_digged'];
    statistics = json['statistics'] != null
        ? Statistics.fromJson(json['statistics'])
        : null;
    status =
    json['status'] != null ? Status.fromJson(json['status']) : null;
    rate = json['rate'];
    if (json['text_extra'] != null) {
      textExtra = <TextExtra>[];
      json['text_extra'].forEach((v) {
        textExtra!.add(TextExtra.fromJson(v));
      });
    }
    isTop = json['is_top'];
    labelTop = json['label_top'] != null
        ? AvatarThumb.fromJson(json['label_top'])
        : null;
    shareInfo = json['share_info'] != null
        ? ShareInfo.fromJson(json['share_info'])
        : null;
    distance = json['distance'];
    if (json['video_labels'] != null) {
      videoLabels = <dynamic>[];
      json['video_labels'].forEach((v) {
        videoLabels!.add(v);
      });
    }
    isVr = json['is_vr'];
    isAds = json['is_ads'];
    awemeType = json['aweme_type'];
    cmtSwt = json['cmt_swt'];
    imageInfos = json['image_infos'];
    riskInfos = json['risk_infos'] != null
        ? RiskInfos.fromJson(json['risk_infos'])
        : null;
    isRelieve = json['is_relieve'];
    sortLabel = json['sort_label'];
    position = json['position'];
    uniqidPosition = json['uniqid_position'];
    authorUserId = json['author_user_id'];
    bodydanceScore = json['bodydance_score'];
    geofencing = json['geofencing'];
    isHashTag = json['is_hash_tag'];
    isPgcshow = json['is_pgcshow'];
    region = json['region'];
    if (json['video_text'] != null) {
      videoText = <dynamic>[];
      json['video_text'].forEach((v) {
        videoText!.add(v);
      });
    }
    collectStat = json['collect_stat'];
    labelTopText = json['label_top_text'];
    groupId = json['group_id'];
    preventDownload = json['prevent_download'];
    nicknamePosition = json['nickname_position'];
    challengePosition = json['challenge_position'];
    itemCommentSettings = json['item_comment_settings'];
    withPromotionalMusic = json['with_promotional_music'];
    longVideo = json['long_video'];
    itemDuet = json['item_duet'];
    itemReact = json['item_react'];
    descLanguage = json['desc_language'];
    if (json['interaction_stickers'] != null) {
      interactionStickers = <InteractionStickers>[];
      json['interaction_stickers'].forEach((v) {
        interactionStickers!.add(InteractionStickers.fromJson(v));
      });
    }
    miscInfo = json['misc_info'];
    originCommentIds = json['origin_comment_ids'];
    commerceConfigData = json['commerce_config_data'];
    distributeType = json['distribute_type'];
    videoControl = json['video_control'] != null
        ? VideoControl.fromJson(json['video_control'])
        : null;
    hasVsEntry = json['has_vs_entry'];
    commerceInfo = json['commerce_info'] != null
        ? CommerceInfo.fromJson(json['commerce_info'])
        : null;
    needVsEntry = json['need_vs_entry'];
    anchors = json['anchors'];
    hybridLabel = json['hybrid_label'];
    withSurvey = json['with_survey'];
    geofencingRegions = json['geofencing_regions'];
    awemeAcl = json['aweme_acl'] != null
        ? AwemeAcl.fromJson(json['aweme_acl'])
        : null;
    coverLabels = json['cover_labels'];
    if (json['mask_infos'] != null) {
      maskInfos = <dynamic>[];
      json['mask_infos'].forEach((v) {
        maskInfos!.add(v);
      });
    }
    searchHighlight = json['search_highlight'];
    playlistBlocked = json['playlist_blocked'];
    greenScreenMaterials = json['green_screen_materials'];
    interactPermission = json['interact_permission'] != null
        ? InteractPermission.fromJson(json['interact_permission'])
        : null;
    questionList = json['question_list'];
    contentDesc = json['content_desc'];
    if (json['content_desc_extra'] != null) {
      contentDescExtra = <ContentDescExtra>[];
      json['content_desc_extra'].forEach((v) {
        contentDescExtra!.add(ContentDescExtra.fromJson(v));
      });
    }
    productsInfo = json['products_info'];
    followUpPublishFromId = json['follow_up_publish_from_id'];
    disableSearchTrendingBar = json['disable_search_trending_bar'];
    musicBeginTimeInMs = json['music_begin_time_in_ms'];
    musicEndTimeInMs = json['music_end_time_in_ms'];
    itemDistributeSource = json['item_distribute_source'];
    itemSourceCategory = json['item_source_category'];
    brandedContentAccounts = json['branded_content_accounts'];
    isDescriptionTranslatable = json['is_description_translatable'];
    followUpItemIdGroups = json['follow_up_item_id_groups'];
    isTextStickerTranslatable = json['is_text_sticker_translatable'];
    textStickerMajorLang = json['text_sticker_major_lang'];
    originalClientText = json['original_client_text'] != null
        ? OriginalClientText.fromJson(json['original_client_text'])
        : null;
    musicSelectedFrom = json['music_selected_from'];
    ttsVoiceIds = json['tts_voice_ids'];
    referenceTtsVoiceIds = json['reference_tts_voice_ids'];
    voiceFilterIds = json['voice_filter_ids'];
    referenceVoiceFilterIds = json['reference_voice_filter_ids'];
    musicTitleStyle = json['music_title_style'];
    commentConfig = json['comment_config'] != null
        ? CommentConfig.fromJson(json['comment_config'])
        : null;
    addedSoundMusicInfo = json['added_sound_music_info'] != null
        ? Music.fromJson(json['added_sound_music_info'])
        : null;
    originVolume = json['origin_volume'];
    musicVolume = json['music_volume'];
    supportDanmaku = json['support_danmaku'];
    hasDanmaku = json['has_danmaku'];
    mufCommentInfoV2 = json['muf_comment_info_v2'];
    behindTheSongMusicIds = json['behind_the_song_music_ids'];
    behindTheSongVideoMusicIds = json['behind_the_song_video_music_ids'];
    contentOriginalType = json['content_original_type'];
    shootTabName = json['shoot_tab_name'];
    contentType = json['content_type'];
    contentSizeType = json['content_size_type'];
    operatorBoostInfo = json['operator_boost_info'];
    logInfo = json['log_info'] != null
        ? LogInfo.fromJson(json['log_info'])
        : null;
    mainArchCommon = json['main_arch_common'];
    aigcInfo = json['aigc_info'] != null
        ? AigcInfo.fromJson(json['aigc_info'])
        : null;
    banners = json['banners'];
    pickedUsers = json['picked_users'];
    commentTopbarInfo = json['comment_topbar_info'];
    playlistInfo = json['playlist_info'] != null
        ? PlaylistInfo.fromJson(json['playlist_info'])
        : null;
    suggestWords = json['suggest_words'] != null
        ? SuggestWords.fromJson(json['suggest_words'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['aweme_id'] = awemeId;
    data['desc'] = desc;
    data['create_time'] = createTime;
    if (author != null) {
      data['author'] = author!.toJson();
    }
    if (music != null) {
      data['music'] = music!.toJson();
    }
    if (chaList != null) {
      data['cha_list'] = chaList!.map((v) => v.toJson()).toList();
    }
    if (video != null) {
      data['video'] = video!.toJson();
    }
    data['share_url'] = shareUrl;
    data['user_digged'] = userDigged;
    if (statistics != null) {
      data['statistics'] = statistics!.toJson();
    }
    if (status != null) {
      data['status'] = status!.toJson();
    }
    data['rate'] = rate;
    if (textExtra != null) {
      data['text_extra'] = textExtra!.map((v) => v.toJson()).toList();
    }
    data['is_top'] = isTop;
    if (labelTop != null) {
      data['label_top'] = labelTop!.toJson();
    }
    if (shareInfo != null) {
      data['share_info'] = shareInfo!.toJson();
    }
    data['distance'] = distance;
    if (videoLabels != null) {
      data['video_labels'] = videoLabels!.map((v) => v.toJson()).toList();
    }
    data['is_vr'] = isVr;
    data['is_ads'] = isAds;
    data['aweme_type'] = awemeType;
    data['cmt_swt'] = cmtSwt;
    data['image_infos'] = imageInfos;
    if (riskInfos != null) {
      data['risk_infos'] = riskInfos!.toJson();
    }
    data['is_relieve'] = isRelieve;
    data['sort_label'] = sortLabel;
    data['position'] = position;
    data['uniqid_position'] = uniqidPosition;
    data['author_user_id'] = authorUserId;
    data['bodydance_score'] = bodydanceScore;
    data['geofencing'] = geofencing;
    data['is_hash_tag'] = isHashTag;
    data['is_pgcshow'] = isPgcshow;
    data['region'] = region;
    if (videoText != null) {
      data['video_text'] = videoText!.map((v) => v.toJson()).toList();
    }
    data['collect_stat'] = collectStat;
    data['label_top_text'] = labelTopText;
    data['group_id'] = groupId;
    data['prevent_download'] = preventDownload;
    data['nickname_position'] = nicknamePosition;
    data['challenge_position'] = challengePosition;
    data['item_comment_settings'] = itemCommentSettings;
    data['with_promotional_music'] = withPromotionalMusic;
    data['long_video'] = longVideo;
    data['item_duet'] = itemDuet;
    data['item_react'] = itemReact;
    data['desc_language'] = descLanguage;
    if (interactionStickers != null) {
      data['interaction_stickers'] =
          interactionStickers!.map((v) => v.toJson()).toList();
    }
    data['misc_info'] = miscInfo;
    data['origin_comment_ids'] = originCommentIds;
    data['commerce_config_data'] = commerceConfigData;
    data['distribute_type'] = distributeType;
    if (videoControl != null) {
      data['video_control'] = videoControl!.toJson();
    }
    data['has_vs_entry'] = hasVsEntry;
    if (commerceInfo != null) {
      data['commerce_info'] = commerceInfo!.toJson();
    }
    data['need_vs_entry'] = needVsEntry;
    data['anchors'] = anchors;
    data['hybrid_label'] = hybridLabel;
    data['with_survey'] = withSurvey;
    data['geofencing_regions'] = geofencingRegions;
    if (awemeAcl != null) {
      data['aweme_acl'] = awemeAcl!.toJson();
    }
    data['cover_labels'] = coverLabels;
    if (maskInfos != null) {
      data['mask_infos'] = maskInfos!.map((v) => v.toJson()).toList();
    }
    data['search_highlight'] = searchHighlight;
    data['playlist_blocked'] = playlistBlocked;
    data['green_screen_materials'] = greenScreenMaterials;
    if (interactPermission != null) {
      data['interact_permission'] = interactPermission!.toJson();
    }
    data['question_list'] = questionList;
    data['content_desc'] = contentDesc;
    if (contentDescExtra != null) {
      data['content_desc_extra'] =
          contentDescExtra!.map((v) => v.toJson()).toList();
    }
    data['products_info'] = productsInfo;
    data['follow_up_publish_from_id'] = followUpPublishFromId;
    data['disable_search_trending_bar'] = disableSearchTrendingBar;
    data['music_begin_time_in_ms'] = musicBeginTimeInMs;
    data['music_end_time_in_ms'] = musicEndTimeInMs;
    data['item_distribute_source'] = itemDistributeSource;
    data['item_source_category'] = itemSourceCategory;
    data['branded_content_accounts'] = brandedContentAccounts;
    data['is_description_translatable'] = isDescriptionTranslatable;
    data['follow_up_item_id_groups'] = followUpItemIdGroups;
    data['is_text_sticker_translatable'] = isTextStickerTranslatable;
    data['text_sticker_major_lang'] = textStickerMajorLang;
    if (originalClientText != null) {
      data['original_client_text'] = originalClientText!.toJson();
    }
    data['music_selected_from'] = musicSelectedFrom;
    data['tts_voice_ids'] = ttsVoiceIds;
    data['reference_tts_voice_ids'] = referenceTtsVoiceIds;
    data['voice_filter_ids'] = voiceFilterIds;
    data['reference_voice_filter_ids'] = referenceVoiceFilterIds;
    data['music_title_style'] = musicTitleStyle;
    if (commentConfig != null) {
      data['comment_config'] = commentConfig!.toJson();
    }
    if (addedSoundMusicInfo != null) {
      data['added_sound_music_info'] = addedSoundMusicInfo!.toJson();
    }
    data['origin_volume'] = originVolume;
    data['music_volume'] = musicVolume;
    data['support_danmaku'] = supportDanmaku;
    data['has_danmaku'] = hasDanmaku;
    data['muf_comment_info_v2'] = mufCommentInfoV2;
    data['behind_the_song_music_ids'] = behindTheSongMusicIds;
    data['behind_the_song_video_music_ids'] = behindTheSongVideoMusicIds;
    data['content_original_type'] = contentOriginalType;
    data['shoot_tab_name'] = shootTabName;
    data['content_type'] = contentType;
    data['content_size_type'] = contentSizeType;
    data['operator_boost_info'] = operatorBoostInfo;
    if (logInfo != null) {
      data['log_info'] = logInfo!.toJson();
    }
    data['main_arch_common'] = mainArchCommon;
    if (aigcInfo != null) {
      data['aigc_info'] = aigcInfo!.toJson();
    }
    data['banners'] = banners;
    data['picked_users'] = pickedUsers;
    data['comment_topbar_info'] = commentTopbarInfo;
    if (playlistInfo != null) {
      data['playlist_info'] = playlistInfo!.toJson();
    }
    if (suggestWords != null) {
      data['suggest_words'] = suggestWords!.toJson();
    }
    return data;
  }
}

class Author {
  String? uid;
  String? shortId;
  String? nickname;
  String? signature;
  AvatarThumb? avatarThumb;
  AvatarThumb? avatarMedium;
  dynamic followStatus;
  bool? isBlock;
  String? customVerify;
  String? uniqueId;
  dynamic roomId;
  dynamic authorityStatus;
  String? verifyInfo;
  ShareInfo? shareInfo;
  bool? withCommerceEntry;
  dynamic verificationType;
  String? enterpriseVerifyReason;
  bool? isAdFake;
  dynamic followersDetail;
  String? region;
  dynamic commerceUserLevel;
  dynamic platformSyncInfo;
  bool? isDisciplineMember;
  dynamic secret;
  bool? preventDownload;
  dynamic geofencing;
  ShareQrcodeUrl? videoIcon;
  dynamic followerStatus;
  dynamic commentSetting;
  dynamic duetSetting;
  dynamic downloadSetting;
  List<dynamic>? coverUrl;
  String? language;
  dynamic itemList;
  bool? isStar;
  List<dynamic>? typeLabel;
  dynamic adCoverUrl;
  dynamic commentFilterStatus;
  AvatarThumb? avatar168x168;
  AvatarThumb? avatar300x300;
  dynamic relativeUsers;
  dynamic chaList;
  String? secUid;
  dynamic needPoints;
  dynamic homepageBottomToast;
  dynamic canSetGeofencing;
  dynamic whiteCoverUrl;
  dynamic userTags;
  dynamic boldFields;
  dynamic searchHighlight;
  dynamic mutualRelationAvatars;
  String? socialInfo;
  dynamic events;
  MatchedFriend? matchedFriend;
  dynamic advanceFeatureItemOrder;
  dynamic advancedFeatureInfo;
  dynamic userProfileGuide;
  dynamic shieldEditFieldInfo;
  dynamic canMessageFollowStatusList;
  dynamic accountLabels;
  dynamic qaStatus;

  Author(
      {this.uid,
        this.shortId,
        this.nickname,
        this.signature,
        this.avatarThumb,
        this.avatarMedium,
        this.followStatus,
        this.isBlock,
        this.customVerify,
        this.uniqueId,
        this.roomId,
        this.authorityStatus,
        this.verifyInfo,
        this.shareInfo,
        this.withCommerceEntry,
        this.verificationType,
        this.enterpriseVerifyReason,
        this.isAdFake,
        this.followersDetail,
        this.region,
        this.commerceUserLevel,
        this.platformSyncInfo,
        this.isDisciplineMember,
        this.secret,
        this.preventDownload,
        this.geofencing,
        this.videoIcon,
        this.followerStatus,
        this.commentSetting,
        this.duetSetting,
        this.downloadSetting,
        this.coverUrl,
        this.language,
        this.itemList,
        this.isStar,
        this.typeLabel,
        this.adCoverUrl,
        this.commentFilterStatus,
        this.avatar168x168,
        this.avatar300x300,
        this.relativeUsers,
        this.chaList,
        this.secUid,
        this.needPoints,
        this.homepageBottomToast,
        this.canSetGeofencing,
        this.whiteCoverUrl,
        this.userTags,
        this.boldFields,
        this.searchHighlight,
        this.mutualRelationAvatars,
        this.socialInfo,
        this.events,
        this.matchedFriend,
        this.advanceFeatureItemOrder,
        this.advancedFeatureInfo,
        this.userProfileGuide,
        this.shieldEditFieldInfo,
        this.canMessageFollowStatusList,
        this.accountLabels,
        this.qaStatus});

  Author.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    shortId = json['short_id'];
    nickname = json['nickname'];
    signature = json['signature'];
    avatarThumb = json['avatar_thumb'] != null
        ? AvatarThumb.fromJson(json['avatar_thumb'])
        : null;
    avatarMedium = json['avatar_medium'] != null
        ? AvatarThumb.fromJson(json['avatar_medium'])
        : null;
    followStatus = json['follow_status'];
    isBlock = json['is_block'];
    customVerify = json['custom_verify'];
    uniqueId = json['unique_id'];
    roomId = json['room_id'];
    authorityStatus = json['authority_status'];
    verifyInfo = json['verify_info'];
    shareInfo = json['share_info'] != null
        ? ShareInfo.fromJson(json['share_info'])
        : null;
    withCommerceEntry = json['with_commerce_entry'];
    verificationType = json['verification_type'];
    enterpriseVerifyReason = json['enterprise_verify_reason'];
    isAdFake = json['is_ad_fake'];
    followersDetail = json['followers_detail'];
    region = json['region'];
    commerceUserLevel = json['commerce_user_level'];
    platformSyncInfo = json['platform_sync_info'];
    isDisciplineMember = json['is_discipline_member'];
    secret = json['secret'];
    preventDownload = json['prevent_download'];
    geofencing = json['geofencing'];
    videoIcon = json['video_icon'] != null
        ? ShareQrcodeUrl.fromJson(json['video_icon'])
        : null;
    followerStatus = json['follower_status'];
    commentSetting = json['comment_setting'];
    duetSetting = json['duet_setting'];
    downloadSetting = json['download_setting'];
    if (json['cover_url'] != null) {
      coverUrl = <dynamic>[];
      json['cover_url'].forEach((v) {
        coverUrl!.add(v);
      });
    }
    language = json['language'];
    itemList = json['item_list'];
    isStar = json['is_star'];
    if (json['type_label'] != null) {
      typeLabel = <dynamic>[];
      json['type_label'].forEach((v) {
        typeLabel!.add(v);
      });
    }
    adCoverUrl = json['ad_cover_url'];
    commentFilterStatus = json['comment_filter_status'];
    avatar168x168 = json['avatar_168x168'] != null
        ? AvatarThumb.fromJson(json['avatar_168x168'])
        : null;
    avatar300x300 = json['avatar_300x300'] != null
        ? AvatarThumb.fromJson(json['avatar_300x300'])
        : null;
    relativeUsers = json['relative_users'];
    chaList = json['cha_list'];
    secUid = json['sec_uid'];
    needPoints = json['need_points'];
    homepageBottomToast = json['homepage_bottom_toast'];
    canSetGeofencing = json['can_set_geofencing'];
    whiteCoverUrl = json['white_cover_url'];
    userTags = json['user_tags'];
    boldFields = json['bold_fields'];
    searchHighlight = json['search_highlight'];
    mutualRelationAvatars = json['mutual_relation_avatars'];
    socialInfo = json['social_info'];
    events = json['events'];
    matchedFriend = json['matched_friend'] != null
        ? MatchedFriend.fromJson(json['matched_friend'])
        : null;
    advanceFeatureItemOrder = json['advance_feature_item_order'];
    advancedFeatureInfo = json['advanced_feature_info'];
    userProfileGuide = json['user_profile_guide'];
    shieldEditFieldInfo = json['shield_edit_field_info'];
    canMessageFollowStatusList = json['can_message_follow_status_list'];
    accountLabels = json['account_labels'];
    qaStatus = json['qa_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = uid;
    data['short_id'] = shortId;
    data['nickname'] = nickname;
    data['signature'] = signature;
    if (avatarThumb != null) {
      data['avatar_thumb'] = avatarThumb!.toJson();
    }
    if (avatarMedium != null) {
      data['avatar_medium'] = avatarMedium!.toJson();
    }
    data['follow_status'] = followStatus;
    data['is_block'] = isBlock;
    data['custom_verify'] = customVerify;
    data['unique_id'] = uniqueId;
    data['room_id'] = roomId;
    data['authority_status'] = authorityStatus;
    data['verify_info'] = verifyInfo;
    if (shareInfo != null) {
      data['share_info'] = shareInfo!.toJson();
    }
    data['with_commerce_entry'] = withCommerceEntry;
    data['verification_type'] = verificationType;
    data['enterprise_verify_reason'] = enterpriseVerifyReason;
    data['is_ad_fake'] = isAdFake;
    data['followers_detail'] = followersDetail;
    data['region'] = region;
    data['commerce_user_level'] = commerceUserLevel;
    data['platform_sync_info'] = platformSyncInfo;
    data['is_discipline_member'] = isDisciplineMember;
    data['secret'] = secret;
    data['prevent_download'] = preventDownload;
    data['geofencing'] = geofencing;
    if (videoIcon != null) {
      data['video_icon'] = videoIcon!.toJson();
    }
    data['follower_status'] = followerStatus;
    data['comment_setting'] = commentSetting;
    data['duet_setting'] = duetSetting;
    data['download_setting'] = downloadSetting;
    if (coverUrl != null) {
      data['cover_url'] = coverUrl!.map((v) => v.toJson()).toList();
    }
    data['language'] = language;
    data['item_list'] = itemList;
    data['is_star'] = isStar;
    if (typeLabel != null) {
      data['type_label'] = typeLabel!.map((v) => v.toJson()).toList();
    }
    data['ad_cover_url'] = adCoverUrl;
    data['comment_filter_status'] = commentFilterStatus;
    if (avatar168x168 != null) {
      data['avatar_168x168'] = avatar168x168!.toJson();
    }
    if (avatar300x300 != null) {
      data['avatar_300x300'] = avatar300x300!.toJson();
    }
    data['relative_users'] = relativeUsers;
    data['cha_list'] = chaList;
    data['sec_uid'] = secUid;
    data['need_points'] = needPoints;
    data['homepage_bottom_toast'] = homepageBottomToast;
    data['can_set_geofencing'] = canSetGeofencing;
    data['white_cover_url'] = whiteCoverUrl;
    data['user_tags'] = userTags;
    data['bold_fields'] = boldFields;
    data['search_highlight'] = searchHighlight;
    data['mutual_relation_avatars'] = mutualRelationAvatars;
    data['social_info'] = socialInfo;
    data['events'] = events;
    if (matchedFriend != null) {
      data['matched_friend'] = matchedFriend!.toJson();
    }
    data['advance_feature_item_order'] = advanceFeatureItemOrder;
    data['advanced_feature_info'] = advancedFeatureInfo;
    data['user_profile_guide'] = userProfileGuide;
    data['shield_edit_field_info'] = shieldEditFieldInfo;
    data['can_message_follow_status_list'] = canMessageFollowStatusList;
    data['account_labels'] = accountLabels;
    data['qa_status'] = qaStatus;
    return data;
  }
}

class AvatarThumb {
  String? uri;
  List<String>? urlList;
  dynamic width;
  dynamic height;
  dynamic urlPrefix;

  AvatarThumb(
      {this.uri, this.urlList, this.width, this.height, this.urlPrefix});

  AvatarThumb.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    urlList = json['url_list'].cast<String>();
    width = json['width'];
    height = json['height'];
    urlPrefix = json['url_prefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    data['url_list'] = urlList;
    data['width'] = width;
    data['height'] = height;
    data['url_prefix'] = urlPrefix;
    return data;
  }
}

class ShareQrcodeUrl {
  String? uri;
  List<dynamic>? urlList;
  dynamic width;
  dynamic height;
  dynamic urlPrefix;

  ShareQrcodeUrl(
      {this.uri, this.urlList, this.width, this.height, this.urlPrefix});

  ShareQrcodeUrl.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    if (json['url_list'] != null) {
      urlList = <dynamic>[];
      json['url_list'].forEach((v) {
        urlList!.add(v);
      });
    }
    width = json['width'];
    height = json['height'];
    urlPrefix = json['url_prefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    if (urlList != null) {
      data['url_list'] = urlList!.map((v) => v.toJson()).toList();
    }
    data['width'] = width;
    data['height'] = height;
    data['url_prefix'] = urlPrefix;
    return data;
  }
}

class MatchedFriend {
  dynamic videoItems;

  MatchedFriend({this.videoItems});

  MatchedFriend.fromJson(Map<String, dynamic> json) {
    videoItems = json['video_items'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['video_items'] = videoItems;
    return data;
  }
}

class Music {
  dynamic id;
  String? idStr;
  String? title;
  String? author;
  String? album;
  AvatarThumb? coverLarge;
  AvatarThumb? coverMedium;
  AvatarThumb? coverThumb;
  AvatarThumb? playUrl;
  dynamic sourcePlatform;
  dynamic duration;
  String? extra;
  dynamic userCount;
  dynamic position;
  dynamic collectStat;
  dynamic status;
  String? offlineDesc;
  String? ownerId;
  String? ownerNickname;
  bool? isOriginal;
  String? mid;
  dynamic bindedChallengeId;
  bool? authorDeleted;
  String? ownerHandle;
  dynamic authorPosition;
  bool? preventDownload;
  List<dynamic>? externalSongInfo;
  String? secUid;
  AvatarThumb? avatarThumb;
  AvatarThumb? avatarMedium;
  dynamic previewStartTime;
  dynamic previewEndTime;
  bool? isCommerceMusic;
  bool? isOriginalSound;
  dynamic artists;
  dynamic lyricShortPosition;
  bool? muteShare;
  dynamic tagList;
  bool? isAuthorArtist;
  bool? isPgc;
  dynamic searchHighlight;
  dynamic multiBitRatePlayInfo;
  dynamic ttToDspSongInfos;
  dynamic recommendStatus;
  dynamic uncertArtists;
  AvatarThumb? strongBeatUrl;

  Music(
      {this.id,
        this.idStr,
        this.title,
        this.author,
        this.album,
        this.coverLarge,
        this.coverMedium,
        this.coverThumb,
        this.playUrl,
        this.sourcePlatform,
        this.duration,
        this.extra,
        this.userCount,
        this.position,
        this.collectStat,
        this.status,
        this.offlineDesc,
        this.ownerId,
        this.ownerNickname,
        this.isOriginal,
        this.mid,
        this.bindedChallengeId,
        this.authorDeleted,
        this.ownerHandle,
        this.authorPosition,
        this.preventDownload,
        this.externalSongInfo,
        this.secUid,
        this.avatarThumb,
        this.avatarMedium,
        this.previewStartTime,
        this.previewEndTime,
        this.isCommerceMusic,
        this.isOriginalSound,
        this.artists,
        this.lyricShortPosition,
        this.muteShare,
        this.tagList,
        this.isAuthorArtist,
        this.isPgc,
        this.searchHighlight,
        this.multiBitRatePlayInfo,
        this.ttToDspSongInfos,
        this.recommendStatus,
        this.uncertArtists,
        this.strongBeatUrl});

  Music.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idStr = json['id_str'];
    title = json['title'];
    author = json['author'];
    album = json['album'];
    coverLarge = json['cover_large'] != null
        ? AvatarThumb.fromJson(json['cover_large'])
        : null;
    coverMedium = json['cover_medium'] != null
        ? AvatarThumb.fromJson(json['cover_medium'])
        : null;
    coverThumb = json['cover_thumb'] != null
        ? AvatarThumb.fromJson(json['cover_thumb'])
        : null;
    playUrl = json['play_url'] != null
        ? AvatarThumb.fromJson(json['play_url'])
        : null;
    sourcePlatform = json['source_platform'];
    duration = json['duration'];
    extra = json['extra'];
    userCount = json['user_count'];
    position = json['position'];
    collectStat = json['collect_stat'];
    status = json['status'];
    offlineDesc = json['offline_desc'];
    ownerId = json['owner_id'];
    ownerNickname = json['owner_nickname'];
    isOriginal = json['is_original'];
    mid = json['mid'];
    bindedChallengeId = json['binded_challenge_id'];
    authorDeleted = json['author_deleted'];
    ownerHandle = json['owner_handle'];
    authorPosition = json['author_position'];
    preventDownload = json['prevent_download'];
    if (json['external_song_info'] != null) {
      externalSongInfo = <dynamic>[];
      json['external_song_info'].forEach((v) {
        externalSongInfo!.add(v);
      });
    }
    secUid = json['sec_uid'];
    avatarThumb = json['avatar_thumb'] != null
        ? AvatarThumb.fromJson(json['avatar_thumb'])
        : null;
    avatarMedium = json['avatar_medium'] != null
        ? AvatarThumb.fromJson(json['avatar_medium'])
        : null;
    previewStartTime = json['preview_start_time'];
    previewEndTime = json['preview_end_time'];
    isCommerceMusic = json['is_commerce_music'];
    isOriginalSound = json['is_original_sound'];
    artists = json['artists'];
    lyricShortPosition = json['lyric_short_position'];
    muteShare = json['mute_share'];
    tagList = json['tag_list'];
    isAuthorArtist = json['is_author_artist'];
    isPgc = json['is_pgc'];
    searchHighlight = json['search_highlight'];
    multiBitRatePlayInfo = json['multi_bit_rate_play_info'];
    ttToDspSongInfos = json['tt_to_dsp_song_infos'];
    recommendStatus = json['recommend_status'];
    uncertArtists = json['uncert_artists'];
    strongBeatUrl = json['strong_beat_url'] != null
        ? AvatarThumb.fromJson(json['strong_beat_url'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_str'] = idStr;
    data['title'] = title;
    data['author'] = author;
    data['album'] = album;
    if (coverLarge != null) {
      data['cover_large'] = coverLarge!.toJson();
    }
    if (coverMedium != null) {
      data['cover_medium'] = coverMedium!.toJson();
    }
    if (coverThumb != null) {
      data['cover_thumb'] = coverThumb!.toJson();
    }
    if (playUrl != null) {
      data['play_url'] = playUrl!.toJson();
    }
    data['source_platform'] = sourcePlatform;
    data['duration'] = duration;
    data['extra'] = extra;
    data['user_count'] = userCount;
    data['position'] = position;
    data['collect_stat'] = collectStat;
    data['status'] = status;
    data['offline_desc'] = offlineDesc;
    data['owner_id'] = ownerId;
    data['owner_nickname'] = ownerNickname;
    data['is_original'] = isOriginal;
    data['mid'] = mid;
    data['binded_challenge_id'] = bindedChallengeId;
    data['author_deleted'] = authorDeleted;
    data['owner_handle'] = ownerHandle;
    data['author_position'] = authorPosition;
    data['prevent_download'] = preventDownload;
    if (externalSongInfo != null) {
      data['external_song_info'] =
          externalSongInfo!.map((v) => v.toJson()).toList();
    }
    data['sec_uid'] = secUid;
    if (avatarThumb != null) {
      data['avatar_thumb'] = avatarThumb!.toJson();
    }
    if (avatarMedium != null) {
      data['avatar_medium'] = avatarMedium!.toJson();
    }
    data['preview_start_time'] = previewStartTime;
    data['preview_end_time'] = previewEndTime;
    data['is_commerce_music'] = isCommerceMusic;
    data['is_original_sound'] = isOriginalSound;
    data['artists'] = artists;
    data['lyric_short_position'] = lyricShortPosition;
    data['mute_share'] = muteShare;
    data['tag_list'] = tagList;
    data['is_author_artist'] = isAuthorArtist;
    data['is_pgc'] = isPgc;
    data['search_highlight'] = searchHighlight;
    data['multi_bit_rate_play_info'] = multiBitRatePlayInfo;
    data['tt_to_dsp_song_infos'] = ttToDspSongInfos;
    data['recommend_status'] = recommendStatus;
    data['uncert_artists'] = uncertArtists;
    if (strongBeatUrl != null) {
      data['strong_beat_url'] = strongBeatUrl!.toJson();
    }
    return data;
  }
}

class ChaList {
  String? cid;
  String? chaName;
  String? desc;
  String? schema;
  Author? author;
  dynamic userCount;
  ShareInfo? shareInfo;
  List<dynamic>? connectMusic;
  dynamic type;
  dynamic subType;
  bool? isPgcshow;
  dynamic collectStat;
  dynamic isChallenge;
  dynamic viewCount;
  bool? isCommerce;
  String? hashtagProfile;
  dynamic chaAttrs;
  dynamic bannerList;
  dynamic showItems;
  dynamic searchHighlight;

  ChaList(
      {this.cid,
        this.chaName,
        this.desc,
        this.schema,
        this.author,
        this.userCount,
        this.shareInfo,
        this.connectMusic,
        this.type,
        this.subType,
        this.isPgcshow,
        this.collectStat,
        this.isChallenge,
        this.viewCount,
        this.isCommerce,
        this.hashtagProfile,
        this.chaAttrs,
        this.bannerList,
        this.showItems,
        this.searchHighlight});

  ChaList.fromJson(Map<String, dynamic> json) {
    cid = json['cid'];
    chaName = json['cha_name'];
    desc = json['desc'];
    schema = json['schema'];
    author =
    json['author'] != null ? Author.fromJson(json['author']) : null;
    userCount = json['user_count'];
    shareInfo = json['share_info'] != null
        ? ShareInfo.fromJson(json['share_info'])
        : null;
    if (json['connect_music'] != null) {
      connectMusic = <dynamic>[];
      json['connect_music'].forEach((v) {
        connectMusic!.add(v);
      });
    }
    type = json['type'];
    subType = json['sub_type'];
    isPgcshow = json['is_pgcshow'];
    collectStat = json['collect_stat'];
    isChallenge = json['is_challenge'];
    viewCount = json['view_count'];
    isCommerce = json['is_commerce'];
    hashtagProfile = json['hashtag_profile'];
    chaAttrs = json['cha_attrs'];
    bannerList = json['banner_list'];
    showItems = json['show_items'];
    searchHighlight = json['search_highlight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cid'] = cid;
    data['cha_name'] = chaName;
    data['desc'] = desc;
    data['schema'] = schema;
    if (author != null) {
      data['author'] = author!.toJson();
    }
    data['user_count'] = userCount;
    if (shareInfo != null) {
      data['share_info'] = shareInfo!.toJson();
    }
    if (connectMusic != null) {
      data['connect_music'] =
          connectMusic!.map((v) => v.toJson()).toList();
    }
    data['type'] = type;
    data['sub_type'] = subType;
    data['is_pgcshow'] = isPgcshow;
    data['collect_stat'] = collectStat;
    data['is_challenge'] = isChallenge;
    data['view_count'] = viewCount;
    data['is_commerce'] = isCommerce;
    data['hashtag_profile'] = hashtagProfile;
    data['cha_attrs'] = chaAttrs;
    data['banner_list'] = bannerList;
    data['show_items'] = showItems;
    data['search_highlight'] = searchHighlight;
    return data;
  }
}

class Video {
  PlayAddr? playAddr;
  AvatarThumb? cover;
  dynamic height;
  dynamic width;
  AvatarThumb? dynamicCover;
  AvatarThumb? originCover;
  String? ratio;
  DownloadAddr? downloadAddr;
  bool? hasWatermark;
  List<BitRate>? bitRate;
  dynamic duration;
  PlayAddr? playAddrH264;
  dynamic cdnUrlExpired;
  bool? needSetToken;
  dynamic? coverTsp;
  String? miscDownloadAddrs;
  dynamic tags;
  dynamic bigThumbs;
  PlayAddr? playAddrBytevc1;
  dynamic isBytevc1;
  String? meta;
  bool? coverIsCustom;
  ClaInfo? claInfo;
  dynamic sourceHDRType;
  List<dynamic>? bitRateAudio;
  FakeLandscapeVideoInfo? fakeLandscapeVideoInfo;
  PillarBoxVideoInfo? pillarBoxVideoInfo;

  Video(
      {this.playAddr,
        this.cover,
        this.height,
        this.width,
        this.dynamicCover,
        this.originCover,
        this.ratio,
        this.downloadAddr,
        this.hasWatermark,
        this.bitRate,
        this.duration,
        this.playAddrH264,
        this.cdnUrlExpired,
        this.needSetToken,
        this.coverTsp,
        this.miscDownloadAddrs,
        this.tags,
        this.bigThumbs,
        this.playAddrBytevc1,
        this.isBytevc1,
        this.meta,
        this.coverIsCustom,
        this.claInfo,
        this.sourceHDRType,
        this.bitRateAudio,
        this.fakeLandscapeVideoInfo,
        this.pillarBoxVideoInfo});

  Video.fromJson(Map<String, dynamic> json) {
    playAddr = json['play_addr'] != null
        ? PlayAddr.fromJson(json['play_addr'])
        : null;
    cover =
    json['cover'] != null ? AvatarThumb.fromJson(json['cover']) : null;
    height = json['height'];
    width = json['width'];
    dynamicCover = json['dynamic_cover'] != null
        ? AvatarThumb.fromJson(json['dynamic_cover'])
        : null;
    originCover = json['origin_cover'] != null
        ? AvatarThumb.fromJson(json['origin_cover'])
        : null;
    ratio = json['ratio'];
    downloadAddr = json['download_addr'] != null
        ? DownloadAddr.fromJson(json['download_addr'])
        : null;
    hasWatermark = json['has_watermark'];
    if (json['bit_rate'] != null) {
      bitRate = <BitRate>[];
      json['bit_rate'].forEach((v) {
        bitRate!.add(BitRate.fromJson(v));
      });
    }
    duration = json['duration'];
    playAddrH264 = json['play_addr_h264'] != null
        ? PlayAddr.fromJson(json['play_addr_h264'])
        : null;
    cdnUrlExpired = json['cdn_url_expired'];
    needSetToken = json['need_set_token'];
    coverTsp = json['CoverTsp'];
    miscDownloadAddrs = json['misc_download_addrs'];
    tags = json['tags'];
    bigThumbs = json['big_thumbs'];
    playAddrBytevc1 = json['play_addr_bytevc1'] != null
        ? PlayAddr.fromJson(json['play_addr_bytevc1'])
        : null;
    isBytevc1 = json['is_bytevc1'];
    meta = json['meta'];
    coverIsCustom = json['cover_is_custom'];
    claInfo = json['cla_info'] != null
        ? ClaInfo.fromJson(json['cla_info'])
        : null;
    sourceHDRType = json['source_HDR_type'];
    if (json['bit_rate_audio'] != null) {
      bitRateAudio = <dynamic>[];
      json['bit_rate_audio'].forEach((v) {
        bitRateAudio!.add(v);
      });
    }
    fakeLandscapeVideoInfo = json['fake_landscape_video_info'] != null
        ? FakeLandscapeVideoInfo.fromJson(json['fake_landscape_video_info'])
        : null;
    pillarBoxVideoInfo = json['pillar_box_video_info'] != null
        ? PillarBoxVideoInfo.fromJson(json['pillar_box_video_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (playAddr != null) {
      data['play_addr'] = playAddr!.toJson();
    }
    if (cover != null) {
      data['cover'] = cover!.toJson();
    }
    data['height'] = height;
    data['width'] = width;
    if (dynamicCover != null) {
      data['dynamic_cover'] = dynamicCover!.toJson();
    }
    if (originCover != null) {
      data['origin_cover'] = originCover!.toJson();
    }
    data['ratio'] = ratio;
    if (downloadAddr != null) {
      data['download_addr'] = downloadAddr!.toJson();
    }
    data['has_watermark'] = hasWatermark;
    if (bitRate != null) {
      data['bit_rate'] = bitRate!.map((v) => v.toJson()).toList();
    }
    data['duration'] = duration;
    if (playAddrH264 != null) {
      data['play_addr_h264'] = playAddrH264!.toJson();
    }
    data['cdn_url_expired'] = cdnUrlExpired;
    data['need_set_token'] = needSetToken;
    data['CoverTsp'] = coverTsp;
    data['misc_download_addrs'] = miscDownloadAddrs;
    data['tags'] = tags;
    data['big_thumbs'] = bigThumbs;
    if (playAddrBytevc1 != null) {
      data['play_addr_bytevc1'] = playAddrBytevc1!.toJson();
    }
    data['is_bytevc1'] = isBytevc1;
    data['meta'] = meta;
    data['cover_is_custom'] = coverIsCustom;
    if (claInfo != null) {
      data['cla_info'] = claInfo!.toJson();
    }
    data['source_HDR_type'] = sourceHDRType;
    if (bitRateAudio != null) {
      data['bit_rate_audio'] =
          bitRateAudio!.map((v) => v.toJson()).toList();
    }
    if (fakeLandscapeVideoInfo != null) {
      data['fake_landscape_video_info'] = fakeLandscapeVideoInfo!.toJson();
    }
    if (pillarBoxVideoInfo != null) {
      data['pillar_box_video_info'] = pillarBoxVideoInfo!.toJson();
    }
    return data;
  }
}

class PlayAddr {
  String? uri;
  List<String>? urlList;
  dynamic width;
  dynamic height;
  String? urlKey;
  dynamic dataSize;
  String? fileHash;
  dynamic urlPrefix;

  PlayAddr(
      {this.uri,
        this.urlList,
        this.width,
        this.height,
        this.urlKey,
        this.dataSize,
        this.fileHash,
        this.urlPrefix});

  PlayAddr.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    urlList = json['url_list'].cast<String>();
    width = json['width'];
    height = json['height'];
    urlKey = json['url_key'];
    dataSize = json['data_size'];
    fileHash = json['file_hash'];
    urlPrefix = json['url_prefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    data['url_list'] = urlList;
    data['width'] = width;
    data['height'] = height;
    data['url_key'] = urlKey;
    data['data_size'] = dataSize;
    data['file_hash'] = fileHash;
    data['url_prefix'] = urlPrefix;
    return data;
  }
}

class DownloadAddr {
  String? uri;
  List<String>? urlList;
  dynamic width;
  dynamic height;
  dynamic dataSize;
  dynamic urlPrefix;

  DownloadAddr(
      {this.uri,
        this.urlList,
        this.width,
        this.height,
        this.dataSize,
        this.urlPrefix});

  DownloadAddr.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    urlList = json['url_list'].cast<String>();
    width = json['width'];
    height = json['height'];
    dataSize = json['data_size'];
    urlPrefix = json['url_prefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    data['url_list'] = urlList;
    data['width'] = width;
    data['height'] = height;
    data['data_size'] = dataSize;
    data['url_prefix'] = urlPrefix;
    return data;
  }
}

class BitRate {
  String? gearName;
  dynamic qualityType;
  dynamic bitRate;
  PlayAddr? playAddr;
  dynamic isBytevc1;
  dynamic dubInfos;
  String? hDRType;
  String? hDRBit;

  BitRate(
      {this.gearName,
        this.qualityType,
        this.bitRate,
        this.playAddr,
        this.isBytevc1,
        this.dubInfos,
        this.hDRType,
        this.hDRBit});

  BitRate.fromJson(Map<String, dynamic> json) {
    gearName = json['gear_name'];
    qualityType = json['quality_type'];
    bitRate = json['bit_rate'];
    playAddr = json['play_addr'] != null
        ? PlayAddr.fromJson(json['play_addr'])
        : null;
    isBytevc1 = json['is_bytevc1'];
    dubInfos = json['dub_infos'];
    hDRType = json['HDR_type'];
    hDRBit = json['HDR_bit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gear_name'] = gearName;
    data['quality_type'] = qualityType;
    data['bit_rate'] = bitRate;
    if (playAddr != null) {
      data['play_addr'] = playAddr!.toJson();
    }
    data['is_bytevc1'] = isBytevc1;
    data['dub_infos'] = dubInfos;
    data['HDR_type'] = hDRType;
    data['HDR_bit'] = hDRBit;
    return data;
  }
}

class ClaInfo {
  dynamic hasOriginalAudio;
  dynamic enableAutoCaption;
  List<CaptionInfos>? captionInfos;
  dynamic creatorEditedCaptionId;
  dynamic verticalPositions;
  bool? hideOriginalCaption;
  dynamic captionsType;
  dynamic noCaptionReason;
  OriginalLanguageInfo? originalLanguageInfo;

  ClaInfo(
      {this.hasOriginalAudio,
        this.enableAutoCaption,
        this.captionInfos,
        this.creatorEditedCaptionId,
        this.verticalPositions,
        this.hideOriginalCaption,
        this.captionsType,
        this.noCaptionReason,
        this.originalLanguageInfo});

  ClaInfo.fromJson(Map<String, dynamic> json) {
    hasOriginalAudio = json['has_original_audio'];
    enableAutoCaption = json['enable_auto_caption'];
    if (json['caption_infos'] != null) {
      captionInfos = <CaptionInfos>[];
      json['caption_infos'].forEach((v) {
        captionInfos!.add(CaptionInfos.fromJson(v));
      });
    }
    creatorEditedCaptionId = json['creator_edited_caption_id'];
    verticalPositions = json['vertical_positions'];
    hideOriginalCaption = json['hide_original_caption'];
    captionsType = json['captions_type'];
    noCaptionReason = json['no_caption_reason'];
    originalLanguageInfo = json['original_language_info'] != null
        ? OriginalLanguageInfo.fromJson(json['original_language_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['has_original_audio'] = hasOriginalAudio;
    data['enable_auto_caption'] = enableAutoCaption;
    if (captionInfos != null) {
      data['caption_infos'] =
          captionInfos!.map((v) => v.toJson()).toList();
    }
    data['creator_edited_caption_id'] = creatorEditedCaptionId;
    data['vertical_positions'] = verticalPositions;
    data['hide_original_caption'] = hideOriginalCaption;
    data['captions_type'] = captionsType;
    data['no_caption_reason'] = noCaptionReason;
    if (originalLanguageInfo != null) {
      data['original_language_info'] = originalLanguageInfo!.toJson();
    }
    return data;
  }
}

class CaptionInfos {
  String? lang;
  dynamic languageId;
  String? url;
  dynamic expire;
  String? captionFormat;
  dynamic complaintId;
  bool? isAutoGenerated;
  dynamic subId;
  String? subVersion;
  dynamic claSubtitleId;
  dynamic translatorId;
  String? languageCode;
  bool? isOriginalCaption;
  List<String>? urlList;
  dynamic captionLength;

  CaptionInfos(
      {this.lang,
        this.languageId,
        this.url,
        this.expire,
        this.captionFormat,
        this.complaintId,
        this.isAutoGenerated,
        this.subId,
        this.subVersion,
        this.claSubtitleId,
        this.translatorId,
        this.languageCode,
        this.isOriginalCaption,
        this.urlList,
        this.captionLength});

  CaptionInfos.fromJson(Map<String, dynamic> json) {
    lang = json['lang'];
    languageId = json['language_id'];
    url = json['url'];
    expire = json['expire'];
    captionFormat = json['caption_format'];
    complaintId = json['complaint_id'];
    isAutoGenerated = json['is_auto_generated'];
    subId = json['sub_id'];
    subVersion = json['sub_version'];
    claSubtitleId = json['cla_subtitle_id'];
    translatorId = json['translator_id'];
    languageCode = json['language_code'];
    isOriginalCaption = json['is_original_caption'];
    urlList = json['url_list'].cast<String>();
    captionLength = json['caption_length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lang'] = lang;
    data['language_id'] = languageId;
    data['url'] = url;
    data['expire'] = expire;
    data['caption_format'] = captionFormat;
    data['complaint_id'] = complaintId;
    data['is_auto_generated'] = isAutoGenerated;
    data['sub_id'] = subId;
    data['sub_version'] = subVersion;
    data['cla_subtitle_id'] = claSubtitleId;
    data['translator_id'] = translatorId;
    data['language_code'] = languageCode;
    data['is_original_caption'] = isOriginalCaption;
    data['url_list'] = urlList;
    data['caption_length'] = captionLength;
    return data;
  }
}

class OriginalLanguageInfo {
  String? lang;
  dynamic languageId;
  String? languageCode;
  bool? canTranslateRealtime;
  dynamic originalCaptionType;
  bool? isBurninCaption;
  bool? canTranslateRealtimeSkipTranslationLangCheck;

  OriginalLanguageInfo(
      {this.lang,
        this.languageId,
        this.languageCode,
        this.canTranslateRealtime,
        this.originalCaptionType,
        this.isBurninCaption,
        this.canTranslateRealtimeSkipTranslationLangCheck});

  OriginalLanguageInfo.fromJson(Map<String, dynamic> json) {
    lang = json['lang'];
    languageId = json['language_id'];
    languageCode = json['language_code'];
    canTranslateRealtime = json['can_translate_realtime'];
    originalCaptionType = json['original_caption_type'];
    isBurninCaption = json['is_burnin_caption'];
    canTranslateRealtimeSkipTranslationLangCheck =
    json['can_translate_realtime_skip_translation_lang_check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lang'] = lang;
    data['language_id'] = languageId;
    data['language_code'] = languageCode;
    data['can_translate_realtime'] = canTranslateRealtime;
    data['original_caption_type'] = originalCaptionType;
    data['is_burnin_caption'] = isBurninCaption;
    data['can_translate_realtime_skip_translation_lang_check'] =
        canTranslateRealtimeSkipTranslationLangCheck;
    return data;
  }
}

class FakeLandscapeVideoInfo {
  dynamic top;
  dynamic bottom;
  dynamic left;
  dynamic right;
  dynamic fakeLandscapeVideoType;

  FakeLandscapeVideoInfo(
      {this.top,
        this.bottom,
        this.left,
        this.right,
        this.fakeLandscapeVideoType});

  FakeLandscapeVideoInfo.fromJson(Map<String, dynamic> json) {
    top = json['top'];
    bottom = json['bottom'];
    left = json['left'];
    right = json['right'];
    fakeLandscapeVideoType = json['fake_landscape_video_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['top'] = top;
    data['bottom'] = bottom;
    data['left'] = left;
    data['right'] = right;
    data['fake_landscape_video_type'] = fakeLandscapeVideoType;
    return data;
  }
}

class PillarBoxVideoInfo {
  dynamic top;
  dynamic bottom;
  dynamic left;
  dynamic right;
  String? version;

  PillarBoxVideoInfo(
      {this.top, this.bottom, this.left, this.right, this.version});

  PillarBoxVideoInfo.fromJson(Map<String, dynamic> json) {
    top = json['top'];
    bottom = json['bottom'];
    left = json['left'];
    right = json['right'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['top'] = top;
    data['bottom'] = bottom;
    data['left'] = left;
    data['right'] = right;
    data['version'] = version;
    return data;
  }
}

class Statistics {
  String awemeId;
  int commentCount;
  int diggCount;
  int downloadCount;
  int playCount;
  int shareCount;
  int forwardCount;
  int loseCount;
  int loseCommentCount;
  int whatsappShareCount;
  int collectCount;
  int repostCount;

  Statistics({
    required this.awemeId,
    required this.commentCount,
    required this.diggCount,
    required this.downloadCount,
    required this.playCount,
    required this.shareCount,
    required this.forwardCount,
    required this.loseCount,
    required this.loseCommentCount,
    required this.whatsappShareCount,
    required this.collectCount,
    required this.repostCount,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
    awemeId: json["aweme_id"],
    commentCount: json["comment_count"],
    diggCount: json["digg_count"],
    downloadCount: json["download_count"],
    playCount: json["play_count"],
    shareCount: json["share_count"],
    forwardCount: json["forward_count"],
    loseCount: json["lose_count"],
    loseCommentCount: json["lose_comment_count"],
    whatsappShareCount: json["whatsapp_share_count"],
    collectCount: json["collect_count"],
    repostCount: json["repost_count"],
  );

  Map<String, dynamic> toJson() => {
    "aweme_id": awemeId,
    "comment_count": commentCount,
    "digg_count": diggCount,
    "download_count": downloadCount,
    "play_count": playCount,
    "share_count": shareCount,
    "forward_count": forwardCount,
    "lose_count": loseCount,
    "lose_comment_count": loseCommentCount,
    "whatsapp_share_count": whatsappShareCount,
    "collect_count": collectCount,
    "repost_count": repostCount,
  };
}

class Status {
  String? awemeId;
  bool? isDelete;
  bool? allowShare;
  bool? allowComment;
  bool? isPrivate;
  bool? withGoods;
  dynamic privateStatus;
  bool? inReviewing;
  dynamic reviewed;
  bool? selfSee;
  bool? isProhibited;
  dynamic downloadStatus;

  Status(
      {this.awemeId,
        this.isDelete,
        this.allowShare,
        this.allowComment,
        this.isPrivate,
        this.withGoods,
        this.privateStatus,
        this.inReviewing,
        this.reviewed,
        this.selfSee,
        this.isProhibited,
        this.downloadStatus});

  Status.fromJson(Map<String, dynamic> json) {
    awemeId = json['aweme_id'];
    isDelete = json['is_delete'];
    allowShare = json['allow_share'];
    allowComment = json['allow_comment'];
    isPrivate = json['is_private'];
    withGoods = json['with_goods'];
    privateStatus = json['private_status'];
    inReviewing = json['in_reviewing'];
    reviewed = json['reviewed'];
    selfSee = json['self_see'];
    isProhibited = json['is_prohibited'];
    downloadStatus = json['download_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['aweme_id'] = awemeId;
    data['is_delete'] = isDelete;
    data['allow_share'] = allowShare;
    data['allow_comment'] = allowComment;
    data['is_private'] = isPrivate;
    data['with_goods'] = withGoods;
    data['private_status'] = privateStatus;
    data['in_reviewing'] = inReviewing;
    data['reviewed'] = reviewed;
    data['self_see'] = selfSee;
    data['is_prohibited'] = isProhibited;
    data['download_status'] = downloadStatus;
    return data;
  }
}

class TextExtra {
  dynamic start;
  dynamic end;
  String? userId;
  dynamic type;
  String? hashtagName;
  String? hashtagId;
  bool? isCommerce;
  String? secUid;

  TextExtra(
      {this.start,
        this.end,
        this.userId,
        this.type,
        this.hashtagName,
        this.hashtagId,
        this.isCommerce,
        this.secUid});

  TextExtra.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    end = json['end'];
    userId = json['user_id'];
    type = json['type'];
    hashtagName = json['hashtag_name'];
    hashtagId = json['hashtag_id'];
    isCommerce = json['is_commerce'];
    secUid = json['sec_uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start'] = start;
    data['end'] = end;
    data['user_id'] = userId;
    data['type'] = type;
    data['hashtag_name'] = hashtagName;
    data['hashtag_id'] = hashtagId;
    data['is_commerce'] = isCommerce;
    data['sec_uid'] = secUid;
    return data;
  }
}

class ShareInfo {
  String? shareUrl;
  String? shareDesc;
  String? shareTitle;
  dynamic boolPersist;
  String? shareTitleMyself;
  String? shareTitleOther;
  String? shareLinkDesc;
  String? shareSignatureUrl;
  String? shareSignatureDesc;
  String? shareQuote;
  String? whatsappDesc;
  String? shareDescInfo;
  dynamic nowInvitationCardImageUrls;
  dynamic shareButtonDisplayMode;
  String? buttonDisplayStrategeSource;

  ShareInfo(
      {this.shareUrl,
        this.shareDesc,
        this.shareTitle,
        this.boolPersist,
        this.shareTitleMyself,
        this.shareTitleOther,
        this.shareLinkDesc,
        this.shareSignatureUrl,
        this.shareSignatureDesc,
        this.shareQuote,
        this.whatsappDesc,
        this.shareDescInfo,
        this.nowInvitationCardImageUrls,
        this.shareButtonDisplayMode,
        this.buttonDisplayStrategeSource});

  ShareInfo.fromJson(Map<String, dynamic> json) {
    shareUrl = json['share_url'];
    shareDesc = json['share_desc'];
    shareTitle = json['share_title'];
    boolPersist = json['bool_persist'];
    shareTitleMyself = json['share_title_myself'];
    shareTitleOther = json['share_title_other'];
    shareLinkDesc = json['share_link_desc'];
    shareSignatureUrl = json['share_signature_url'];
    shareSignatureDesc = json['share_signature_desc'];
    shareQuote = json['share_quote'];
    whatsappDesc = json['whatsapp_desc'];
    shareDescInfo = json['share_desc_info'];
    nowInvitationCardImageUrls = json['now_invitation_card_image_urls'];
    shareButtonDisplayMode = json['share_button_display_mode'];
    buttonDisplayStrategeSource = json['button_display_stratege_source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['share_url'] = shareUrl;
    data['share_desc'] = shareDesc;
    data['share_title'] = shareTitle;
    data['bool_persist'] = boolPersist;
    data['share_title_myself'] = shareTitleMyself;
    data['share_title_other'] = shareTitleOther;
    data['share_link_desc'] = shareLinkDesc;
    data['share_signature_url'] = shareSignatureUrl;
    data['share_signature_desc'] = shareSignatureDesc;
    data['share_quote'] = shareQuote;
    data['whatsapp_desc'] = whatsappDesc;
    data['share_desc_info'] = shareDescInfo;
    data['now_invitation_card_image_urls'] = nowInvitationCardImageUrls;
    data['share_button_display_mode'] = shareButtonDisplayMode;
    data['button_display_stratege_source'] = buttonDisplayStrategeSource;
    return data;
  }
}

class RiskInfos {
  bool? vote;
  bool? warn;
  bool? riskSink;
  dynamic type;
  String? content;

  RiskInfos({this.vote, this.warn, this.riskSink, this.type, this.content});

  RiskInfos.fromJson(Map<String, dynamic> json) {
    vote = json['vote'];
    warn = json['warn'];
    riskSink = json['risk_sink'];
    type = json['type'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vote'] = vote;
    data['warn'] = warn;
    data['risk_sink'] = riskSink;
    data['type'] = type;
    data['content'] = content;
    return data;
  }
}

class InteractionStickers {
  dynamic type;
  dynamic index;
  String? trackInfo;
  String? attr;
  String? textInfo;
  TextStickerInfo? textStickerInfo;

  InteractionStickers(
      {this.type,
        this.index,
        this.trackInfo,
        this.attr,
        this.textInfo,
        this.textStickerInfo});

  InteractionStickers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    index = json['index'];
    trackInfo = json['track_info'];
    attr = json['attr'];
    textInfo = json['text_info'];
    textStickerInfo = json['text_sticker_info'] != null
        ? TextStickerInfo.fromJson(json['text_sticker_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['index'] = index;
    data['track_info'] = trackInfo;
    data['attr'] = attr;
    data['text_info'] = textInfo;
    if (textStickerInfo != null) {
      data['text_sticker_info'] = textStickerInfo!.toJson();
    }
    return data;
  }
}

class TextStickerInfo {
  dynamic textSize;
  String? textColor;
  String? bgColor;
  String? textLanguage;
  dynamic alignment;
  dynamic sourceWidth;
  dynamic sourceHeight;

  TextStickerInfo(
      {this.textSize,
        this.textColor,
        this.bgColor,
        this.textLanguage,
        this.alignment,
        this.sourceWidth,
        this.sourceHeight});

  TextStickerInfo.fromJson(Map<String, dynamic> json) {
    textSize = json['text_size'];
    textColor = json['text_color'];
    bgColor = json['bg_color'];
    textLanguage = json['text_language'];
    alignment = json['alignment'];
    sourceWidth = json['source_width'];
    sourceHeight = json['source_height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text_size'] = textSize;
    data['text_color'] = textColor;
    data['bg_color'] = bgColor;
    data['text_language'] = textLanguage;
    data['alignment'] = alignment;
    data['source_width'] = sourceWidth;
    data['source_height'] = sourceHeight;
    return data;
  }
}

class VideoControl {
  bool? allowDownload;
  dynamic shareType;
  dynamic showProgressBar;
  dynamic draftProgressBar;
  bool? allowDuet;
  bool? allowReact;
  dynamic preventDownloadType;
  bool? allowDynamicWallpaper;
  dynamic timerStatus;
  bool? allowMusic;
  bool? allowStitch;

  VideoControl(
      {this.allowDownload,
        this.shareType,
        this.showProgressBar,
        this.draftProgressBar,
        this.allowDuet,
        this.allowReact,
        this.preventDownloadType,
        this.allowDynamicWallpaper,
        this.timerStatus,
        this.allowMusic,
        this.allowStitch});

  VideoControl.fromJson(Map<String, dynamic> json) {
    allowDownload = json['allow_download'];
    shareType = json['share_type'];
    showProgressBar = json['show_progress_bar'];
    draftProgressBar = json['draft_progress_bar'];
    allowDuet = json['allow_duet'];
    allowReact = json['allow_react'];
    preventDownloadType = json['prevent_download_type'];
    allowDynamicWallpaper = json['allow_dynamic_wallpaper'];
    timerStatus = json['timer_status'];
    allowMusic = json['allow_music'];
    allowStitch = json['allow_stitch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['allow_download'] = allowDownload;
    data['share_type'] = shareType;
    data['show_progress_bar'] = showProgressBar;
    data['draft_progress_bar'] = draftProgressBar;
    data['allow_duet'] = allowDuet;
    data['allow_react'] = allowReact;
    data['prevent_download_type'] = preventDownloadType;
    data['allow_dynamic_wallpaper'] = allowDynamicWallpaper;
    data['timer_status'] = timerStatus;
    data['allow_music'] = allowMusic;
    data['allow_stitch'] = allowStitch;
    return data;
  }
}

class CommerceInfo {
  bool? advPromotable;
  dynamic brandedContentType;

  CommerceInfo({this.advPromotable, this.brandedContentType});

  CommerceInfo.fromJson(Map<String, dynamic> json) {
    advPromotable = json['adv_promotable'];
    brandedContentType = json['branded_content_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adv_promotable'] = advPromotable;
    data['branded_content_type'] = brandedContentType;
    return data;
  }
}

class AwemeAcl {
  DownloadGeneral? downloadGeneral;
  DownloadGeneral? downloadMaskPanel;
  dynamic shareListStatus;
  ShareGeneral? shareGeneral;
  dynamic platformList;
  dynamic shareActionList;
  dynamic pressActionList;

  AwemeAcl(
      {this.downloadGeneral,
        this.downloadMaskPanel,
        this.shareListStatus,
        this.shareGeneral,
        this.platformList,
        this.shareActionList,
        this.pressActionList});

  AwemeAcl.fromJson(Map<String, dynamic> json) {
    downloadGeneral = json['download_general'] != null
        ? DownloadGeneral.fromJson(json['download_general'])
        : null;
    downloadMaskPanel = json['download_mask_panel'] != null
        ? DownloadGeneral.fromJson(json['download_mask_panel'])
        : null;
    shareListStatus = json['share_list_status'];
    shareGeneral = json['share_general'] != null
        ? ShareGeneral.fromJson(json['share_general'])
        : null;
    platformList = json['platform_list'];
    shareActionList = json['share_action_list'];
    pressActionList = json['press_action_list'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (downloadGeneral != null) {
      data['download_general'] = downloadGeneral!.toJson();
    }
    if (downloadMaskPanel != null) {
      data['download_mask_panel'] = downloadMaskPanel!.toJson();
    }
    data['share_list_status'] = shareListStatus;
    if (shareGeneral != null) {
      data['share_general'] = shareGeneral!.toJson();
    }
    data['platform_list'] = platformList;
    data['share_action_list'] = shareActionList;
    data['press_action_list'] = pressActionList;
    return data;
  }
}

class DownloadGeneral {
  dynamic code;
  dynamic showType;
  dynamic transcode;
  bool? mute;
  String? extra;

  DownloadGeneral(
      {this.code, this.showType, this.transcode, this.mute, this.extra});

  DownloadGeneral.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    showType = json['show_type'];
    transcode = json['transcode'];
    mute = json['mute'];
    extra = json['extra'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['show_type'] = showType;
    data['transcode'] = transcode;
    data['mute'] = mute;
    data['extra'] = extra;
    return data;
  }
}

class ShareGeneral {
  dynamic code;
  dynamic showType;
  dynamic transcode;
  bool? mute;
  String? toastMsg;
  String? extra;

  ShareGeneral(
      {this.code,
        this.showType,
        this.transcode,
        this.mute,
        this.toastMsg,
        this.extra});

  ShareGeneral.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    showType = json['show_type'];
    transcode = json['transcode'];
    mute = json['mute'];
    toastMsg = json['toast_msg'];
    extra = json['extra'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['show_type'] = showType;
    data['transcode'] = transcode;
    data['mute'] = mute;
    data['toast_msg'] = toastMsg;
    data['extra'] = extra;
    return data;
  }
}

class InteractPermission {
  dynamic duet;
  dynamic stitch;
  dynamic duetPrivacySetting;
  dynamic stitchPrivacySetting;
  dynamic upvote;
  dynamic allowAddingToStory;
  AllowCreateSticker? allowCreateSticker;

  InteractPermission(
      {this.duet,
        this.stitch,
        this.duetPrivacySetting,
        this.stitchPrivacySetting,
        this.upvote,
        this.allowAddingToStory,
        this.allowCreateSticker});

  InteractPermission.fromJson(Map<String, dynamic> json) {
    duet = json['duet'];
    stitch = json['stitch'];
    duetPrivacySetting = json['duet_privacy_setting'];
    stitchPrivacySetting = json['stitch_privacy_setting'];
    upvote = json['upvote'];
    allowAddingToStory = json['allow_adding_to_story'];
    allowCreateSticker = json['allow_create_sticker'] != null
        ? AllowCreateSticker.fromJson(json['allow_create_sticker'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['duet'] = duet;
    data['stitch'] = stitch;
    data['duet_privacy_setting'] = duetPrivacySetting;
    data['stitch_privacy_setting'] = stitchPrivacySetting;
    data['upvote'] = upvote;
    data['allow_adding_to_story'] = allowAddingToStory;
    if (allowCreateSticker != null) {
      data['allow_create_sticker'] = allowCreateSticker!.toJson();
    }
    return data;
  }
}

class AllowCreateSticker {
  dynamic status;

  AllowCreateSticker({this.status});

  AllowCreateSticker.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    return data;
  }
}

class ContentDescExtra {
  dynamic start;
  dynamic end;
  dynamic type;
  String? hashtagName;
  String? hashtagId;
  bool? isCommerce;
  dynamic lineIdx;

  ContentDescExtra(
      {this.start,
        this.end,
        this.type,
        this.hashtagName,
        this.hashtagId,
        this.isCommerce,
        this.lineIdx});

  ContentDescExtra.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    end = json['end'];
    type = json['type'];
    hashtagName = json['hashtag_name'];
    hashtagId = json['hashtag_id'];
    isCommerce = json['is_commerce'];
    lineIdx = json['line_idx'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start'] = start;
    data['end'] = end;
    data['type'] = type;
    data['hashtag_name'] = hashtagName;
    data['hashtag_id'] = hashtagId;
    data['is_commerce'] = isCommerce;
    data['line_idx'] = lineIdx;
    return data;
  }
}

class OriginalClientText {
  String? markupText;
  List<TextExtra>? textExtra;

  OriginalClientText({this.markupText, this.textExtra});

  OriginalClientText.fromJson(Map<String, dynamic> json) {
    markupText = json['markup_text'];
    if (json['text_extra'] != null) {
      textExtra = <TextExtra>[];
      json['text_extra'].forEach((v) {
        textExtra!.add(TextExtra.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['markup_text'] = markupText;
    if (textExtra != null) {
      data['text_extra'] = textExtra!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CommentConfig {
  List<EmojiRecommendList>? emojiRecommendList;

  CommentConfig({this.emojiRecommendList});

  CommentConfig.fromJson(Map<String, dynamic> json) {
    if (json['emoji_recommend_list'] != null) {
      emojiRecommendList = <EmojiRecommendList>[];
      json['emoji_recommend_list'].forEach((v) {
        emojiRecommendList!.add(EmojiRecommendList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (emojiRecommendList != null) {
      data['emoji_recommend_list'] =
          emojiRecommendList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EmojiRecommendList {
  String? emoji;
  dynamic score;

  EmojiRecommendList({this.emoji, this.score});

  EmojiRecommendList.fromJson(Map<String, dynamic> json) {
    emoji = json['emoji'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['emoji'] = emoji;
    data['score'] = score;
    return data;
  }
}

class LogInfo {
  String? order;
  String? imprId;
  String? pullType;

  LogInfo({this.order, this.imprId, this.pullType});

  LogInfo.fromJson(Map<String, dynamic> json) {
    order = json['order'];
    imprId = json['impr_id'];
    pullType = json['pull_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order'] = order;
    data['impr_id'] = this.imprId;
    data['pull_type'] = this.pullType;
    return data;
  }
}

class AigcInfo {
  dynamic aigcLabelType;

  AigcInfo({this.aigcLabelType});

  AigcInfo.fromJson(Map<String, dynamic> json) {
    aigcLabelType = json['aigc_label_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['aigc_label_type'] = aigcLabelType;
    return data;
  }
}

class PlaylistInfo {
  String? mixId;
  String? name;
  dynamic index;
  dynamic itemTotal;

  PlaylistInfo({this.mixId, this.name, this.index, this.itemTotal});

  PlaylistInfo.fromJson(Map<String, dynamic> json) {
    mixId = json['mix_id'];
    name = json['name'];
    index = json['index'];
    itemTotal = json['item_total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mix_id'] = mixId;
    data['name'] = name;
    data['index'] = index;
    data['item_total'] = itemTotal;
    return data;
  }
}

class SuggestWords {
  List<SuggestWords>? suggestWords;
  List<Words>? words;
  String? scene;
  String? hintText;
  String? qrecVirtualEnable;

  SuggestWords({this.suggestWords, this.words, this.scene, this.hintText, this.qrecVirtualEnable});

  SuggestWords.fromJson(Map<String, dynamic> json) {
    if (json['suggest_words'] != null) {
      suggestWords = <SuggestWords>[];
      json['suggest_words'].forEach((v) {
        suggestWords!.add(SuggestWords.fromJson(v));
      });
    }
    if (json['words'] != null) {
      words = <Words>[];
      json['words'].forEach((v) {
        words!.add(Words.fromJson(v));
      });
    }
    scene = json['scene'];
    hintText = json['hint_text'];
    qrecVirtualEnable = json['qrec_virtual_enable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (suggestWords != null) {
      data['suggest_words'] =
          suggestWords!.map((v) => v.toJson()).toList();
    }
    if (this.words != null) {
      data['words'] = this.words!.map((v) => v.toJson()).toList();
    }
    data['scene'] = this.scene;
    data['hint_text'] = this.hintText;
    data['qrec_virtual_enable'] = this.qrecVirtualEnable;
    return data;
  }
}

class Words {
  String? word;
  String? wordId;

  Words({this.word, this.wordId});

  Words.fromJson(Map<String, dynamic> json) {
    word = json['word'];
    wordId = json['word_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['word'] = word;
    data['word_id'] = wordId;
    return data;
  }
}

class Extra {
  dynamic now;
  dynamic fatalItemIds;
  dynamic apiDebugInfo;

  Extra({this.now, this.fatalItemIds, this.apiDebugInfo});

  Extra.fromJson(Map<String, dynamic> json) {
    now = json['now'];
    fatalItemIds = json['fatal_item_ids'];
    apiDebugInfo = json['api_debug_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['now'] = now;
    data['fatal_item_ids'] = fatalItemIds;
    data['api_debug_info'] = apiDebugInfo;
    return data;
  }
}

class LogPb {
  String? imprId;

  LogPb({this.imprId});

  LogPb.fromJson(Map<String, dynamic> json) {
    imprId = json['impr_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['impr_id'] = imprId;
    return data;
  }
}