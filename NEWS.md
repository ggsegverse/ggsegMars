# ggsegMars 1.0.2.9000

- The atlases are renamed from `marsatlas_` to `mars_`: `marsatlas_cortical()`
  is now `mars_cortical()` and `marsatlas_subcortical()` is now
  `mars_subcortical()`. The old prefix repeated the "atlas" in "MarsAtlas",
  which no other ggsegverse package does. The old names still work and return
  the same atlas, with a deprecation warning; they will be removed in a later
  release. The `atlas` field inside each object changes with them, from
  `marsatlas_cortical`/`marsatlas_subcortical` to `mars_cortical`/
  `mars_subcortical`.
- The grey `cortex_` silhouette in the subcortical atlas keeps its sulci and
  gyri. It was polished in the same pass as the structures, and a parcel-grade
  `keep = 0.2` straightens gyral crowns into facets and merges neighbouring
  sulci, so the context read as a blob rather than a brain. Context and
  structures are now polished separately: the silhouette keeps half its
  vertices and is rounded with `chaikin`, which moves vertices rather than
  dilating and so leaves every sulcus open, while the structures simplify
  harder and are smoothed with `close` as before. The atlas grows from 4.7k to
  10.4k vertices, in line with the other subcortical atlases in the ecosystem.

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
