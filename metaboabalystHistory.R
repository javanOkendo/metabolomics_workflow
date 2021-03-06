
mSet<-InitDataObjects("pktable", "stat", FALSE)
mSet<-Read.TextData(mSet, "Replacing_with_your_file_path", "colu", "disc");
mSet<-SanityCheckData(mSet)
mSet<-ReplaceMin(mSet);
mSet<-PreparePrenormData(mSet)
mSet<-Normalization(mSet, "SumNorm", "NULL", "AutoNorm", ratio=FALSE, ratioNum=20)
mSet<-PlotNormSummary(mSet, "norm_0_", "png", 72, width=NA)
mSet<-PlotSampleNormSummary(mSet, "snorm_0_", "png", 72, width=NA)
mSet<-ANOVA.Anal(mSet, F, 0.05, "fisher")
mSet<-PlotANOVA(mSet, "aov_0_", "png", 72, width=NA)
mSet<-PlotCmpdView(mSet, "410.9/1857", "png", 72, width=NA)
mSet<-PlotCmpdView(mSet, "1571.4/7836", "png", 72, width=NA)
mSet<-PlotCorrHeatMap(mSet, "corr_0_", "png", 72, width=NA, "col", "pearson", "bwm", "overview", F, F, F, 100)
mSet<-PCA.Anal(mSet)
mSet<-PlotPCAPairSummary(mSet, "pca_pair_0_", "png", 72, width=NA, 5)
mSet<-PlotPCAScree(mSet, "pca_scree_0_", "png", 72, width=NA, 5)
mSet<-PlotPCA2DScore(mSet, "pca_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotPCALoading(mSet, "pca_loading_0_", "png", 72, width=NA, 1,2);
mSet<-PlotPCABiplot(mSet, "pca_biplot_0_", "png", 72, width=NA, 1,2)
mSet<-PlotPCA3DScoreImg(mSet, "pca_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PCA.Flip(mSet, "y")
mSet<-PlotPCAPairSummary(mSet, "pca_pair_1_", "png", 72, width=NA, 5)
mSet<-PlotPCAScree(mSet, "pca_scree_1_", "png", 72, width=NA, 5)
mSet<-PlotPCA2DScore(mSet, "pca_score2d_1_", "png", 72, width=NA, 1,2,0.95,1,0)
mSet<-PlotPCALoading(mSet, "pca_loading_1_", "png", 72, width=NA, 1,2);
mSet<-PlotPCABiplot(mSet, "pca_biplot_1_", "png", 72, width=NA, 1,2)
mSet<-PlotPCA3DScoreImg(mSet, "pca_score3d_1_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PLSR.Anal(mSet, reg=TRUE)
mSet<-PlotPLSPairSummary(mSet, "pls_pair_0_", "png", 72, width=NA, 5)
mSet<-PlotPLS2DScore(mSet, "pls_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotPLS3DScoreImg(mSet, "pls_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PlotPLSLoading(mSet, "pls_loading_0_", "png", 72, width=NA, 1, 2);
mSet<-PLSDA.CV(mSet, "L",5, "Q2")
mSet<-PlotPLS.Classification(mSet, "pls_cv_0_", "png", 72, width=NA)
mSet<-PlotPLS.Imp(mSet, "pls_imp_0_", "png", 72, width=NA, "vip", "Comp. 1", 15,FALSE)
mSet<-PlotPCA2DScore(mSet, "pca_score2d_2_", "png", 72, width=NA, 1,2,0.95,1,0)
mSet<-PreparePrenormData(mSet)
mSet<-Normalization(mSet, "SumNorm", "NULL", "AutoNorm", ratio=FALSE, ratioNum=20)
mSet<-PlotNormSummary(mSet, "norm_1_", "png", 72, width=NA)
mSet<-PlotSampleNormSummary(mSet, "snorm_1_", "png", 72, width=NA)
mSet<-PCA.Anal(mSet)
mSet<-PlotPCAPairSummary(mSet, "pca_pair_1_", "png", 72, width=NA, 5)
mSet<-PlotPCAScree(mSet, "pca_scree_1_", "png", 72, width=NA, 5)
mSet<-PlotPCA2DScore(mSet, "pca_score2d_2_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotPCALoading(mSet, "pca_loading_1_", "png", 72, width=NA, 1,2);
mSet<-PlotPCABiplot(mSet, "pca_biplot_1_", "png", 72, width=NA, 1,2)
mSet<-PlotPCA3DScoreImg(mSet, "pca_score3d_1_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PLSR.Anal(mSet, reg=TRUE)
mSet<-PlotPLSPairSummary(mSet, "pls_pair_0_", "png", 72, width=NA, 5)
mSet<-PlotPLS2DScore(mSet, "pls_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotPLS3DScoreImg(mSet, "pls_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PlotPLSLoading(mSet, "pls_loading_0_", "png", 72, width=NA, 1, 2);
mSet<-PLSDA.CV(mSet, "L",5, "Q2")
mSet<-PlotPLS.Classification(mSet, "pls_cv_0_", "png", 72, width=NA)
mSet<-PlotPLS.Imp(mSet, "pls_imp_0_", "png", 72, width=NA, "vip", "Comp. 1", 15,FALSE)
mSet<-SPLSR.Anal(mSet, 5, 10, "same")
mSet<-PlotSPLSPairSummary(mSet, "spls_pair_0_", "png", 72, width=NA, 5)
mSet<-PlotSPLS2DScore(mSet, "spls_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotSPLS3DScoreImg(mSet, "spls_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PlotSPLSLoading(mSet, "spls_loading_0_", "png", 72, width=NA, 1,"overview");
mSet<-PlotSPLSDA.Classification(mSet, "spls_cv_0_", "Mfold", "png", 72, width=NA)
mSet<-PlotSPLS2DScore(mSet, "spls_score2d_1_", "png", 72, width=NA, 1,2,0.95,1,0)
mSet<-PlotSPLS2DScore(mSet, "spls_score2d_2_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-SAM.Anal(mSet, "d.stat", FALSE, TRUE)
mSet<-PlotSAM.FDR(mSet, 0.1, "sam_view_0_", "png", 72, width=NA)
mSet<-SetSAMSigMat(mSet, 0.1)
mSet<-PlotSAM.Cmpd(mSet, "sam_imp_0_", "png", 72, width=NA)
mSet<-PlotHCTree(mSet, "tree_0_", "png", 72, width=NA, "euclidean", "ward.D")
mSet<-PlotHCTree(mSet, "tree_1_", "png", 72, width=NA, "pearson", "ward.D")
mSet<-PlotHCTree(mSet, "tree_2_", "png", 72, width=NA, "spearman", "ward.D")
mSet<-PlotHCTree(mSet, "tree_3_", "png", 72, width=NA, "euclidean", "ward.D")
mSet<-PlotHeatMap(mSet, "heatmap_0_", "png", 72, width=NA, "norm", "row", "euclidean", "ward.D","bwm", "overview", T, T, NA, T, F)
mSet<-PlotHeatMap(mSet, "heatmap_1_", "png", 72, width=NA, "norm", "row", "euclidean", "ward.D","bwm", "overview", T, T, NA, T, F)
mSet<-PlotSubHeatMap(mSet, "heatmap_2_", "png", 72, width=NA, "norm", "row", "euclidean", "ward.D","bwm", "tanova", 25, "overview", F, T, F, F)
mSet<-PlotSubHeatMap(mSet, "heatmap_3_", "png", 72, width=NA, "norm", "row", "euclidean", "ward.D","bwm", "tanova", 50, "overview", F, T, F, F)
mSet<-PlotSubHeatMap(mSet, "heatmap_4_", "png", 72, width=NA, "norm", "row", "correlation", "ward.D","bwm", "tanova", 50, "overview", F, T, F, F)
mSet<-PlotSubHeatMap(mSet, "heatmap_5_", "png", 72, width=NA, "norm", "row", "correlation", "ward.D","bwm", "tanova", 15, "overview", F, T, F, F)
mSet<-PlotSubHeatMap(mSet, "heatmap_6_", "png", 72, width=NA, "norm", "row", "correlation", "ward.D","bwm", "tanova", 25, "overview", F, T, F, F)
mSet<-PlotSubHeatMap(mSet, "heatmap_7_", "png", 72, width=NA, "norm", "row", "correlation", "ward.D","heat", "tanova", 25, "overview", F, T, F, F)
mSet<-PlotSubHeatMap(mSet, "heatmap_8_", "png", 72, width=NA, "norm", "row", "correlation", "ward.D","gbr", "tanova", 25, "overview", F, T, F, F)
mSet<-SOM.Anal(mSet, 1,3,"linear","gaussian")
mSet<-PlotSOM(mSet, "som_0_", "png", 72, width=NA)
mSet<-Kmeans.Anal(mSet, 3)
mSet<-PlotKmeans(mSet, "km_0_", "png", 72, width=NA)
mSet<-RF.Anal(mSet, 500,7,1)
mSet<-PlotRF.Classify(mSet, "rf_cls_0_", "png", 72, width=NA)
mSet<-PlotRF.VIP(mSet, "rf_imp_0_", "png", 72, width=NA)
mSet<-PlotRF.Outlier(mSet, "rf_outlier_0_", "png", 72, width=NA)
