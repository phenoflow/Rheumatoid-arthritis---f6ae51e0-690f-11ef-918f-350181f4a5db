cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  rheumatoid-arthritis-factor---secondary:
    run: rheumatoid-arthritis-factor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  other-rheumatoid-arthritis---secondary:
    run: other-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-factor---secondary/output
  rheumatoid-arthritis-specified---secondary:
    run: rheumatoid-arthritis-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-system---secondary:
    run: rheumatoid-arthritis-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-specified---secondary/output
  pauciarticular-rheumatoid-arthritis---secondary:
    run: pauciarticular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-system---secondary/output
  juvenile-rheumatoid-arthritis---secondary:
    run: juvenile-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: pauciarticular-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-felty---secondary:
    run: rheumatoid-arthritis-felty---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: juvenile-rheumatoid-arthritis---secondary/output
  monarticular-rheumatoid-arthritis---secondary:
    run: monarticular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-felty---secondary/output
  arthropathy-rheumatoid-arthritis---secondary:
    run: arthropathy-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: monarticular-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis---secondary:
    run: rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: arthropathy-rheumatoid-arthritis---secondary/output
  arthritis---secondary:
    run: arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis---secondary/output
  chronic-rheumatoid-arthritis---secondary:
    run: chronic-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: arthritis---secondary/output
  acute-rheumatoid-arthritis---secondary:
    run: acute-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: chronic-rheumatoid-arthritis---secondary/output
  seropositive-rheumatoid-arthritis---secondary:
    run: seropositive-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: acute-rheumatoid-arthritis---secondary/output
  early-rheumatoid-arthritis---secondary:
    run: early-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: seropositive-rheumatoid-arthritis---secondary/output
  polyarticular-rheumatoid-arthritis---secondary:
    run: polyarticular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: early-rheumatoid-arthritis---secondary/output
  seronegative-rheumatoid-arthritis---secondary:
    run: seronegative-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: polyarticular-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-onset---secondary:
    run: rheumatoid-arthritis-onset---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: seronegative-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-carditis---secondary:
    run: rheumatoid-arthritis-carditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-onset---secondary/output
  rheumatoid-arthritis-shoulder---secondary:
    run: rheumatoid-arthritis-shoulder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-carditis---secondary/output
  rheumatoid-arthritis-fingerpulp---secondary:
    run: rheumatoid-arthritis-fingerpulp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-shoulder---secondary/output
  rheumatoid-arthritis-first---secondary:
    run: rheumatoid-arthritis-first---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-fingerpulp---secondary/output
  interphalangeal-rheumatoid-arthritis---secondary:
    run: interphalangeal-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-first---secondary/output
  rheumatoid-arthritis-flare---secondary:
    run: rheumatoid-arthritis-flare---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: interphalangeal-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-radioulnar---secondary:
    run: rheumatoid-arthritis-radioulnar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-flare---secondary/output
  tibiofibular-rheumatoid-arthritis---secondary:
    run: tibiofibular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-radioulnar---secondary/output
  rheumatoid-arthritis-joint---secondary:
    run: rheumatoid-arthritis-joint---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: tibiofibular-rheumatoid-arthritis---secondary/output
  sternoclavicular-rheumatoid-arthritis---secondary:
    run: sternoclavicular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-joint---secondary/output
  acromioclavicular-rheumatoid-arthritis---secondary:
    run: acromioclavicular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: sternoclavicular-rheumatoid-arthritis---secondary/output
  talonavicular-rheumatoid-arthritis---secondary:
    run: talonavicular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: acromioclavicular-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-lesser---secondary:
    run: rheumatoid-arthritis-lesser---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: talonavicular-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-spine---secondary:
    run: rheumatoid-arthritis-spine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-lesser---secondary/output
  rheumatoid-arthritis-elbow---secondary:
    run: rheumatoid-arthritis-elbow---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-spine---secondary/output
  rheumatoid-arthritis-wrist---secondary:
    run: rheumatoid-arthritis-wrist---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-elbow---secondary/output
  metacarpophalangeal-rheumatoid-arthritis---secondary:
    run: metacarpophalangeal-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-wrist---secondary/output
  rheumatoid-arthritis-sacroiliac---secondary:
    run: rheumatoid-arthritis-sacroiliac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: metacarpophalangeal-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-ankle---secondary:
    run: rheumatoid-arthritis-ankle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sacroiliac---secondary/output
  subtalar-rheumatoid-arthritis---secondary:
    run: subtalar-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-ankle---secondary/output
  multiple-rheumatoid-arthritis---secondary:
    run: multiple-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: subtalar-rheumatoid-arthritis---secondary/output
  errosive-rheumatoid-arthritis---secondary:
    run: errosive-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: multiple-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-pneumoconiosis---secondary:
    run: rheumatoid-arthritis-pneumoconiosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: errosive-rheumatoid-arthritis---secondary/output
  temporomandibular-rheumatoid-arthritis---secondary:
    run: temporomandibular-rheumatoid-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pneumoconiosis---secondary/output
  rheumatoid-arthritis-process---secondary:
    run: rheumatoid-arthritis-process---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: temporomandibular-rheumatoid-arthritis---secondary/output
  rheumatoid-arthritis-arteritis---secondary:
    run: rheumatoid-arthritis-arteritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-process---secondary/output
  rheumatoid-arthritis-vasculitis---secondary:
    run: rheumatoid-arthritis-vasculitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-arteritis---secondary/output
  rheumatoid-arthritis-infarct---secondary:
    run: rheumatoid-arthritis-infarct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-vasculitis---secondary/output
  rheumatoid-arthritis-uveitisarthritis---secondary:
    run: rheumatoid-arthritis-uveitisarthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-infarct---secondary/output
  rheumatoid-arthritis-nailfold---secondary:
    run: rheumatoid-arthritis-nailfold---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-uveitisarthritis---secondary/output
  rheumatoid-arthritis-necrotizing---secondary:
    run: rheumatoid-arthritis-necrotizing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-nailfold---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-necrotizing---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
