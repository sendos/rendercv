((* if date_and_location_column_template *))
#two-col-entry(
  left-content: [
    ((* if entry.is_company_with_multiple_positions *))
        <<main_column_first_row_alt1_template>>
    ((* elif entry.is_position_in_multi_position_company *))
        <<main_column_first_row_alt2_template>>
    ((* else *))
        <<main_column_first_row_template>>
    ((* endif *))
    
    ((* if design.entries.short_second_row or date_and_location_column_template.count("\n\n") > main_column_first_row_template.count("\n\n") or design.section_titles.type=="moderncv" *))
    ((* if main_column_second_row_template *))
    #v(-design-text-leading)
    ((* endif *))

    <<main_column_second_row_template|replace("\n\n", "\n\n#v(-design-text-leading)")>>
    ((* endif *))
  ],
  right-content: [
    <<date_and_location_column_template>>
  ],
)
  ((* if not (design.entries.short_second_row or date_and_location_column_template.count("\n\n") > main_column_first_row_template.count("\n\n") or design.section_titles.type=="moderncv") *))
#one-col-entry(
  content: [
    <<main_column_second_row_template|replace("\n\n", "\n\n#v(-design-text-leading)")>>
  ],
)
((* endif *))
((* else *))

#one-col-entry(
  content: [
    ((* if entry.is_company_with_multiple_positions *))
        <<main_column_first_row_alt1_template>>
    ((* elif entry.is_position_in_multi_position_company *))
        <<main_column_first_row_alt2_template>>
    ((* else *))
        <<main_column_first_row_template>>
    ((* endif *))

    ((* if main_column_second_row_template *))
    #v(-design-text-leading)
    ((* endif *))
    <<main_column_second_row_template|replace("\n\n", "\n\n#v(-design-text-leading)")>>
  ],
)
((* endif *))
