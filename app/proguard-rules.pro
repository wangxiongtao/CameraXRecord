# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-optimizationpasses 5                                                       #指定代码压缩级别
-dontusemixedcaseclassnames                                                 #混淆时不会产生形形色色的类名
-dontskipnonpubliclibraryclasses                                            #指定不忽略非公共类库
-dontpreverify                                                              #不预校验，如果需要预校验，是-dontoptimize
-ignorewarnings                                                             #屏蔽警告
-verbose                                                                    #混淆时记录日志
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*    #优化

-dontoptimize


# 保留我们使用的四大组件，自定义的Application等等这些类不被混淆
# 因为这些子类都有可能被外部调用
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.view.View
-keep public class com.android.vending.licensing.ILicensingService


-keepclasseswithmembernames class * {
    native <methods>;
}

# 保留Activity中的方法参数是view的方法，
# 从而我们在layout里面编写onClick就不会影响
-keepclassmembers class * extends android.app.Activity {
    public void * (android.view.View);
}



#-keepattributes *Annotation*
#-keepattributes *JavascriptInterface*
#-keep public class com.wanda.merchantplatform.business.webview.entity.H5Interface{
#    public *;
#}

##网络请求和数据bean
-keep  class com.dawn.lib_base.http.**{*;}
-keep  class com.wanda.merchantplatform.base.**{*;}
-keep  class com.wanda.merchantplatform.business.main.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.businesscrad.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.contacts.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.home.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.login.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.message.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.mine.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.personalcenter.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.servicetool.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.webview.entity.**{*;}
-keep  class com.wanda.merchantplatform.business.setting.entity.**{*;}
-keep class com.wanda.merchantplatform.common.utils.flutterutil.FlutterError {*;}
##微信
-keep class com.tencent.mm.opensdk.** {*;}

-keep class com.tencent.wxop.** {*;}

-keep class com.tencent.mm.sdk.** {*;}

##友盟
-keep class com.umeng.** {*;}

-keep class com.uc.** {*;}
-keepclassmembers class * {
   public <init> (org.json.JSONObject);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep public class com.wanda.merchantplatform.R$*{
public static final int *;
}
-keep class com.uc.** {*;}
-keep class com.zui.** {*;}
-keep class com.miui.** {*;}
-keep class com.heytap.** {*;}
-keep class a.** {*;}
-keep class com.vivo.** {*;}



-keep public class * extends android.view.View{
    *** get*();
    void set*(***);
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable

#保留自定义的 OcrSDKKit 类和类成员不被混淆
-keep class com.tencent.ocr.sdk.** {*;}
#第三方 jar 包不被混淆
-keep class com.tencent.youtu.** {*;}

#推送
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep class com.tencent.android.tpush.** {*;}
-keep class com.tencent.tpns.baseapi.** {*;}
-keep class com.tencent.tpns.mqttchannel.** {*;}
-keep class com.tencent.tpns.dataacquisition.** {*;}

-keep class com.tencent.bigdata.baseapi.** {*;}
-keep class com.tencent.bigdata.mqttchannel.** {*;}


#一键登录
-keep class cn.com.chinatelecom.account.**{*;}
-keep class com.sdk.** { *;}
-keep class com.cmic.sso.sdk.**{*;}
-keep class com.rich.oauth.**{*;}

-keep class com.tencent.imsdk.**{*;}


-keep public class * implements com.bumptech.glide.module.GlideModule
-keep class * extends com.bumptech.glide.module.AppGlideModule {
 <init>(...);
}
-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
-keep class com.bumptech.glide.load.data.ParcelFileDescriptorRewinder$InternalRewinder {
  *** rewind();
}

-dontwarn com.bumptech.glide.**
#华为扫码混淆
-ignorewarnings
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keep class com.huawei.hianalytics.**{*;}
-keep class com.huawei.updatesdk.**{*;}
-keep class com.huawei.hms.**{*;}

##腾讯bugly
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}

# 快钱聚合支付混淆过滤
-dontwarn com.kuaiqian.**
-keep class com.kuaiqian.** {*;}

# 微信混淆过滤
-dontwarn com.tencent.**
-keep class com.tencent.** {*;}

# 内部WebView混淆过滤
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# 银联混淆
-dontwarn com.unionpay.**
-keep class com.huawei.nfc.sdk.service.** {*;}
-keep class com.unionpay.** {*;}
-keep class cn.gov.pbc.tsm.client.mobile.android.bank.service.** {*;}
-keep class org.simalliance.openmobileapi.** {*;}

#华为推送
-ignorewarnings
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keep class com.hianalytics.android.**{*;}
-keep class com.huawei.updatesdk.**{*;}
-keep class com.huawei.hms.**{*;}
-keep class com.huawei.agconnect.**{*;}

#小米推送
-keep class com.xiaomi.**{*;}
-keep public class * extends com.xiaomi.mipush.sdk.PushMessageReceiver

#vivo推送
-dontwarn com.vivo.push.**
-keep class com.vivo.push.**{*; }
-keep class com.vivo.vms.**{*; }
-keep class com.tencent.android.vivopush.VivoPushMessageReceiver{*;}

#oppo推送
-keep public class * extends android.app.Service
-keep class com.heytap.mcssdk.** {*;}
-keep class com.heytap.msp.push.** { *;}

-keep class com.luck.picture.lib.** { *; }