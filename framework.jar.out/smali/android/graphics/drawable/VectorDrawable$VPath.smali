.class Landroid/graphics/drawable/VectorDrawable$VPath;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroid/util/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1251
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .locals 1
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1254
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 1255
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 1256
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1257
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1275
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1271
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroid/util/PathParser$PathDataNode;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public isClipPath()Z
    .locals 1

    .prologue
    .line 1278
    const/4 v0, 0x0

    return v0
.end method

.method public setPathData([Landroid/util/PathParser$PathDataNode;)V
    .locals 1
    .param p1, "nodes"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    .line 1289
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    invoke-static {p1}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1295
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/util/PathParser;->updateNodes([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)V

    goto :goto_0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 1260
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1261
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/util/PathParser$PathDataNode;->nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 1264
    :cond_0
    return-void
.end method
