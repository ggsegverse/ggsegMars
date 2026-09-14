# ggsegMars 1.0.2.9000

- The atlases are rebuilt with ggseg.extra 1.9.9.9029 and ggseg.formats
  0.0.4.9005. The cortical atlas no longer has unlabelled holes, and the
  medial wall is grey context rather than parcels bleeding across it. The
  subcortical slabs are framed on the bounding box of the labels, so every
  structure is drawn in at least one axial and one coronal view.
- `Left_Isthmus_Cingulate_Cortex(BA_30)` and its right-hemisphere twin are
  now classified cortical rather than subcortical. They are cortex, and the
  vertex-count heuristic had put them with the basal ganglia. The cortical
  atlas has 83 regions and the subcortical atlas 14, against 88 and 4 before.
- The subcortical atlas gains the thalamus, caudate, pallidum, hippocampus
  and accumbens of both hemispheres, which the previous classification had
  left out entirely.
- MarsAtlas ships a colour lookup table that is black for every region, so
  renders are a black silhouette with visible region boundaries. The lookup
  table is left unchanged; a forthcoming `ggseg.formats` release falls back
  to automatically assigned, distinguishable colours for a palette like this
  one, and the README figures show that fallback. The tests still go through
  the stored palette, so they run against the released `ggseg.formats`.
- `data-raw/make_atlas.R` runs against the current `ggseg.extra` API again:
  `decimate` moved into `subcortical_opts`, and `tolerance`/`smoothness` are
  replaced by `atlas_simplify()` on the finished atlases.

# ggsegMars 1.0.2

- Atlas 2D geometry migrated to the sf-optional `brain_polygons` format
  (`ggseg.formats` 0.0.3). The atlases now render without `sf` and its
  GDAL/GEOS/PROJ system libraries, enabling wasm and air-gapped installs.
  Plots are unchanged.

# ggsegMars 1.0.0

* Initial release with `marsatlas_cortical` and `marsatlas_subcortical`
  atlases as unified `ggseg_atlas` objects for the ggseg 2.0 ecosystem.
