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
  ocular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: ocular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-dystrophy---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-dystrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ocular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-endophthalmitis---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-endophthalmitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-dystrophy---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-keratoconjunctivitis---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-keratoconjunctivitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-endophthalmitis---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-blindness---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-blindness---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-keratoconjunctivitis---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-scleritis---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-scleritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-blindness---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-specified---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-scleritis---secondary/output
  degenerative-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: degenerative-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-specified---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-globe---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-globe---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: degenerative-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  corneal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: corneal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-globe---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-sclera---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-sclera---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: corneal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-accommodation---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-accommodation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-sclera---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-function---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-function---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-accommodation---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-heterotropia---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-heterotropia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-function---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-disturbance---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-disturbance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-heterotropia---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-neuritis---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-neuritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-disturbance---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-cataract---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-cataract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-neuritis---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-pathway---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-pathway---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-cataract---secondary/output
  paralytic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: paralytic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-pathway---secondary/output
  chronic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: chronic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: paralytic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  chorioretinal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: chorioretinal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chronic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-ciliary---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-ciliary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: chorioretinal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-conjunctival---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-conjunctival---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-ciliary---secondary/output
  choroidal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: choroidal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-conjunctival---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-changes---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-changes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: choroidal-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  secondary-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: secondary-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-changes---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-orbit---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-orbit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: secondary-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-artery---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-artery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-orbit---secondary/output
  infectious-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: infectious-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-artery---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-senile---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-senile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: infectious-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-deformity---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-deformity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-senile---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-chalazion---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-chalazion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-deformity---secondary/output
  metabolic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: metabolic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-chalazion---secondary/output
  primary-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: primary-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: metabolic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-inflammation---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-inflammation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: primary-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-atrophy---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-atrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-inflammation---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-keratitis---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-keratitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-atrophy---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-passage---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-passage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-keratitis---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-deposits---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-deposits---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-passage---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-glaucoma---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-glaucoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-deposits---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-haemorrhage---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-haemorrhage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-glaucoma---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-occlusion---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-occlusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-haemorrhage---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-breaks---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-breaks---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-occlusion---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-iridocyclitis---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-iridocyclitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-breaks---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-classified---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-iridocyclitis---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-system---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-classified---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-ophthalmoplegia---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-ophthalmoplegia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-system---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-strabismu---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-strabismu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-ophthalmoplegia---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-palsy---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-palsy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-strabismu---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-palsy---secondary/output
  intraocular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: intraocular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  irregular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: irregular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: intraocular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  vascular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: vascular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: irregular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-insufficiency---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-insufficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: vascular-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-concomitant---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-concomitant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-insufficiency---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-opacity---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-opacity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-concomitant---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-xanthelasma---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-xanthelasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-opacity---secondary/output
  central-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: central-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-xanthelasma---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-involvement---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-involvement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: central-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  retinopathy-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: retinopathy-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-involvement---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-myopia---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-myopia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: retinopathy-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-infestation---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-infestation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-myopia---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-posterior---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-posterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-infestation---secondary/output
  acute-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: acute-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-posterior---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-condition---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-condition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: acute-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-unqualified---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-unqualified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-condition---secondary/output
  vitreous-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: vitreous-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-unqualified---secondary/output
  death-by-diseases-of-the-eye-and-adnexa-natural-cause-membranes---secondary:
    run: death-by-diseases-of-the-eye-and-adnexa-natural-cause-membranes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: vitreous-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  foreign-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: foreign-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-eye-and-adnexa-natural-cause-membranes---secondary/output
  eye---secondary:
    run: eye---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: foreign-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  diabetic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: diabetic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: eye---secondary/output
  other-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary:
    run: other-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: diabetic-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: other-death-by-diseases-of-the-eye-and-adnexa-natural-cause---secondary/output
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
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
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
