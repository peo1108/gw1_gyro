.class public Lcom/zjx/jyandroid/MainApp/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/MainApp/MainActivity$c;
    }
.end annotation


# static fields
.field public static g:I = 0x0

.field public static final h:I = 0x64

.field public static i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/Components/Alert;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Z


# instance fields
.field public a:Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

.field public b:Landroid/media/ImageReader;

.field public c:Landroid/media/projection/MediaProjectionManager;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:Lme/ibrahimsn/lib/SmoothBottomBar;

.field public f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/MainApp/MainActivity;->i:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zjx/jyandroid/MainApp/MainActivity;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/MainApp/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/MainActivity$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/MainApp/MainActivity;)Lcom/zjx/jyandroid/databinding/ActivityMainBinding;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

    return-object p0
.end method

.method public static synthetic d()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/MainApp/MainActivity;->i:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static synthetic e(I)I
    .locals 0

    sput p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->g:I

    return p0
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/MainApp/MainActivity;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->d:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method private registerMessageBroadcastReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zjx.jyandroid.onServerMessageReceived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjx.jyandroid.onUpdateInfoReceived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterMessageBroadcastReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 4

    sget v0, Lcom/zjx/jyandroid/R$id;->pageView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->d:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/zjx/jyandroid/R$id;->bottomBar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/ibrahimsn/lib/SmoothBottomBar;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->e:Lme/ibrahimsn/lib/SmoothBottomBar;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/zjx/jyandroid/MainApp/MainActivity$c;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/zjx/jyandroid/MainApp/MainActivity$c;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->d:Landroidx/viewpager2/widget/ViewPager2;

    sget v1, Lcom/zjx/jyandroid/MainApp/MainActivity;->g:I

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->d:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->e:Lme/ibrahimsn/lib/SmoothBottomBar;

    sget v1, Lcom/zjx/jyandroid/MainApp/MainActivity;->g:I

    invoke-virtual {v0, v1}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemActiveIndex(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->e:Lme/ibrahimsn/lib/SmoothBottomBar;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainActivity$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainActivity$b;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity;)V

    invoke-virtual {v0, v1}, Lme/ibrahimsn/lib/SmoothBottomBar;->setOnItemSelectedListener(Lme/ibrahimsn/lib/OnItemSelectedListener;)V

    return-void
.end method

.method public final i()V
    .locals 2

    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public declared-synchronized init()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/zjx/jyandroid/MainApp/MainActivity;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startActivationProcess()V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "persist"

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zjx/jyandroid/AssetCopier;->copyAssetFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->j(Ljava/io/File;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "appData"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/zjx/jyandroid/AssetCopier;->copyAssetFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/jyandroid/MainApp/MainActivity;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final j()V
    .locals 1

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-static {p0, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->getStartIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "008b77f467"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/MainActivity;->init()V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/MainActivity;->h()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/MainApp/MainActivity;->registerMessageBroadcastReceiver()V

    sget-object p1, Lcom/zjx/jyandroid/MainApp/MainActivity;->i:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/Alert;->getBaseView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/Alert;->getBaseView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/Alert;->getAlertView()Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->setBaseView(Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/MainApp/MainActivity;->unregisterMessageBroadcastReceiver()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    # MDM: block the UI until root (su uid 0) is confirmed
    invoke-static {p0}, Lmdm/RootGate;->onResume(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->preferences_main_application:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/databases/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "firstRunAfterInstall"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "/data/data/com.zx.yxt/shared_prefs/"

    if-eqz v0, :cond_0

    invoke-static {v2, v3}, Lcom/zjx/jyandroid/base/util/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/zjx/jyandroid/R$string;->preferences_main_application:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Lcom/zjx/jyandroid/base/util/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
