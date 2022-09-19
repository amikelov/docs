mixcr exportPlots diversity -f \
    --metric ShannonWiener \
    --plot-type boxplot-bindot \
    --primary-group Time \
    --primary-group-values T0,M1,M2 \
    --facet-by Marker \
    pa/i.json.gz \
    figs/diversity-facets.svg