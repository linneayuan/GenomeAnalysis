directory <- "~/Desktop/Genome analysis/htseq"

sampleFiles <- c('ERR2036629.txt', 'ERR2036630.txt', 'ERR2036631.txt', 'ERR2036632.txt', 
                 'ERR2036633.txt', 'ERR2117288.txt', 'ERR2117289.txt', 'ERR2117290.txt',
                 'ERR2117291.txt', 'ERR2117292.txt')
sampleCondition <- c('continuous', 'continuous', 'batch', 'batch', 'continuous',
                     'continuous', 'continuous', 'batch', 'batch', 'continuous')
sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)

sampleTable$condition <- factor(sampleTable$condition)

library("DESeq2")
ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)
ddsHTSeq

dds <- DESeq(ddsHTSeq)

res <- results(dds)

summary(res)

plotMA(res)

library(ReportingTools)
report <- HTMLReport(shortName = 'differential_expression_analysis', title = 'Differential expression analysis continous vs batch', reportDirectory = '.')
publish(dds, report, pvalueCutoff=0.05, make.plots = TRUE, factor = sampleTable$condition, reportDir = ".")
finish(report)
