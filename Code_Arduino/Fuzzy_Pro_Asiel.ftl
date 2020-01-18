/* fuzzyTECH 8.21c Professional Edition */
PROJECT {
  NAME = Fuzzy System;
  SHELL = ON_LINE;
  AUDIT { TIMESTAMP = 1562034031; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Created} }
  AUDIT { TIMESTAMP = 1562034055; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562034190; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562034753; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562034915; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562035229; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562035520; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562035557; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562035590; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562035850; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562036212; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562036318; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562036927; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562037141; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562037341; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562037358; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562037907; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562039271; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562039477; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562039624; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562040087; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562040583; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562048738; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562053716; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562132735; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562291546; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562293126; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562293393; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562294163; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562298058; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562298412; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562299494; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562314241; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  AUDIT { TIMESTAMP = 1562316184; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {Last Edit} }
  SHELLOPTIONS {
    ONLINE_CODE = OFF;
    ONLINE_TRACE_BUFFER = (OFF, PAR(0));
    COMMENTS = ON;
    FTL_BUFFER = OFF;
    PASSWORD = OFF;
    BTYPE = DOUBLE;
  } /* SHELLOPTIONS */
  MODEL {
    VARIABLE_SECTION {
      LVAR {
        NAME = d_error;
        INPUT = CMBF;
        LVRANGE = MIN(-1.0), MAX(1.0), MINDEF(0), MAXDEF(65535), DEFAULT(0.0);
        POS = -1385, -1352;
        TERM {
          TERMNAME = d_neg;
          SHAPE = STANDARD;
          POINTS = (-1.0, 1.0),
                   (-0.8, 1.0),
                   (0.0, 0.0),
                   (1.0, 0.0);
          COLOR = RED (0), GREEN (0), BLUE (139);
        }
        TERM {
          TERMNAME = d_ok;
          SHAPE = STANDARD;
          POINTS = (-1.0, 0.0),
                   (-0.3, 0.0),
                   (0.0, 1.0),
                   (0.3, 0.0),
                   (1.0, 0.0);
          COLOR = RED (0), GREEN (100), BLUE (0);
        }
        TERM {
          TERMNAME = d_pos;
          SHAPE = STANDARD;
          POINTS = (-1.0, 0.0),
                   (0.0, 0.0),
                   (0.8, 1.0),
                   (1.0, 1.0);
          COLOR = RED (255), GREEN (140), BLUE (0);
        }
      } /* LVAR */
      LVAR {
        NAME = error;
        INPUT = CMBF;
        LVRANGE = MIN(-300.0), MAX(300.0), MINDEF(0), MAXDEF(65535), DEFAULT(0.0);
        POS = -1383, -1415;
        TERM {
          TERMNAME = alto_neg;
          SHAPE = STANDARD;
          POINTS = (-300.0, 1.0),
                   (-250.0, 1.0),
                   (-50.0, 0.0),
                   (0.0, 0.0),
                   (300.0, 0.0);
          COLOR = RED (0), GREEN (0), BLUE (139);
        }
        TERM {
          TERMNAME = medio_neg;
          SHAPE = STANDARD;
          POINTS = (-300.0, 0.0),
                   (-100.0, 0.0),
                   (-50.0, 1.0),
                   (0.0, 0.0),
                   (300.0, 0.0);
          COLOR = RED (0), GREEN (100), BLUE (0);
        }
        TERM {
          TERMNAME = ok;
          SHAPE = STANDARD;
          POINTS = (-300.0, 0.0),
                   (-50.0, 0.0),
                   (0.0, 1.0),
                   (50.0, 0.0),
                   (300.0, 0.0);
          COLOR = RED (0), GREEN (139), BLUE (139);
        }
        TERM {
          TERMNAME = medio_pos;
          SHAPE = STANDARD;
          POINTS = (-300.0, 0.0),
                   (0.0, 0.0),
                   (50.0, 1.0),
                   (100.0, 0.0),
                   (300.0, 0.0);
          COLOR = RED (255), GREEN (140), BLUE (0);
        }
        TERM {
          TERMNAME = alto_pos;
          SHAPE = STANDARD;
          POINTS = (-300.0, 0.0),
                   (0.0, 0.0),
                   (50.0, 0.0),
                   (250.0, 1.0),
                   (300.0, 1.0);
          COLOR = RED (255), GREEN (20), BLUE (147);
        }
      } /* LVAR */
      LVAR {
        NAME = var3;
        OUTPUT = FCOA;
        LVRANGE = MIN(0.0), MAX(255.0), MINDEF(0), MAXDEF(65535), DEFAULT(0.0);
        POS = -951, -1384;
        TERM {
          TERMNAME = pwm_zero;
          SHAPE = STANDARD;
          POINTS = (0.0, 1.0),
                   (2.0, 1.0),
                   (40.0, 0.0),
                   (255.0, 0.0);
          COLOR = RED (0), GREEN (0), BLUE (139);
        }
        TERM {
          TERMNAME = pwm_bajo;
          SHAPE = STANDARD;
          POINTS = (0.0, 0.0),
                   (20.0, 0.0),
                   (60.0, 1.0),
                   (100.0, 0.0),
                   (255.0, 0.0);
          COLOR = RED (0), GREEN (139), BLUE (139);
        }
        TERM {
          TERMNAME = pwm_medio;
          SHAPE = STANDARD;
          POINTS = (0.0, 0.0),
                   (80.0, 0.0),
                   (120.0, 1.0),
                   (160.0, 0.0),
                   (255.0, 0.0);
          COLOR = RED (0), GREEN (100), BLUE (0);
        }
        TERM {
          TERMNAME = pwm_alto;
          SHAPE = STANDARD;
          POINTS = (0.0, 0.0),
                   (140.0, 0.0),
                   (200.0, 1.0),
                   (255.0, 1.0);
          COLOR = RED (255), GREEN (140), BLUE (0);
        }
      } /* LVAR */
    } /* VARIABLE_SECTION */
    OBJECT_SECTION {
      RULEBLOCK {
        GUID = {7DEE4B1E-A46E-435F-AA06-B56DF9874BF9};
        NAME = RB1;
        AUDIT { TIMESTAMP = 1562034043; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRuleBlock()} }
        AUDIT { TIMESTAMP = 1562034045; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {SetPosition(-1235, -1405)} }
        AUDIT { TIMESTAMP = 1562036027; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertInputAt('error', 1)} }
        AUDIT { TIMESTAMP = 1562036039; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleGroupAt(G1 - 161405A9-AD14-41DE-A10B-4B657D44FB3B)} }
        AUDIT { TIMESTAMP = 1562036074; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertInputAt('d_error', 2)} }
        AUDIT { TIMESTAMP = 1562036140; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {RemoveRuleGroupAt(G1 - 161405A9-AD14-41DE-A10B-4B657D44FB3B)} }
        AUDIT { TIMESTAMP = 1562036149; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleGroupAt(G1 - C5B767A0-4EC5-4DBE-8062-65CDC4F41EAE)} }
        AUDIT { TIMESTAMP = 1562036153; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {RemoveRuleGroupAt(G1 - C5B767A0-4EC5-4DBE-8062-65CDC4F41EAE)} }
        AUDIT { TIMESTAMP = 1562036156; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleGroupAt(G1 - 8EE07070-CD9F-462A-974B-04CFDE639E31)} }
        AUDIT { TIMESTAMP = 1562036172; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertInputAt('var3', 3)} }
        AUDIT { TIMESTAMP = 1562036181; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {RemoveInput('var3')} }
        AUDIT { TIMESTAMP = 1562036184; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertOutputAt('var3', 1)} }
        AUDIT { TIMESTAMP = 1562036212; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {RemoveRuleGroupAt(G1 - 8EE07070-CD9F-462A-974B-04CFDE639E31)} }
        AUDIT { TIMESTAMP = 1562036303; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleGroupAt(G1 - 1B8908AF-63B8-464C-A887-546C7D04ABD9)} }
        AUDIT { TIMESTAMP = 1562036318; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRuleGroup(G1 - 1B8908AF-63B8-464C-A887-546C7D04ABD9)} }
        AUDIT { TIMESTAMP = 1562040583; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRuleGroup(G1 - 1B8908AF-63B8-464C-A887-546C7D04ABD9)} }
        INPUT = error, d_error;
        OUTPUT = var3;
        AGGREGATION = (MIN_MAX, PAR (0.0));
        RESULT_AGGR = MAX;
        POS = -1235, -1405;
        RULEGROUP {
          GUID = {1B8908AF-63B8-464C-A887-546C7D04ABD9};
          AUDIT { TIMESTAMP = 1562036303; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRuleGroup()} }
          AUDIT { TIMESTAMP = 1562036318; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R1 - 0E535615-8ACA-4875-BA54-561ACF44E7B4)} }
          AUDIT { TIMESTAMP = 1562036318; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R1 - 0E535615-8ACA-4875-BA54-561ACF44E7B4)} }
          AUDIT { TIMESTAMP = 1562037427; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R1 - 0E535615-8ACA-4875-BA54-561ACF44E7B4)} }
          AUDIT { TIMESTAMP = 1562037443; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R2 - BF0BCF48-3399-4D9F-96B7-05E60D73EF93)} }
          AUDIT { TIMESTAMP = 1562037687; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R3 - 3FFBBA6A-C12C-41D0-923B-F194D03C67F6)} }
          AUDIT { TIMESTAMP = 1562037805; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R2 - BF0BCF48-3399-4D9F-96B7-05E60D73EF93)} }
          AUDIT { TIMESTAMP = 1562038048; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R4 - E0B96919-ADC3-433D-B43C-645749595862)} }
          AUDIT { TIMESTAMP = 1562038190; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R5 - D77FE709-A8C2-412C-A9E2-85DFACECDE9A)} }
          AUDIT { TIMESTAMP = 1562038233; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R5 - D77FE709-A8C2-412C-A9E2-85DFACECDE9A)} }
          AUDIT { TIMESTAMP = 1562038268; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R6 - 9F48C289-89DC-496A-AED7-43C349745349)} }
          AUDIT { TIMESTAMP = 1562038403; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R7 - 996EB08F-320E-4774-A6EF-AF46B29F5181)} }
          AUDIT { TIMESTAMP = 1562038814; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R7 - 996EB08F-320E-4774-A6EF-AF46B29F5181)} }
          AUDIT { TIMESTAMP = 1562039068; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R6 - 9F48C289-89DC-496A-AED7-43C349745349)} }
          AUDIT { TIMESTAMP = 1562039260; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R8 - 3CD51256-67CC-4600-ACCE-0580F2098630)} }
          AUDIT { TIMESTAMP = 1562039477; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R8 - 3CD51256-67CC-4600-ACCE-0580F2098630)} }
          AUDIT { TIMESTAMP = 1562039492; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R9 - 05E94ABD-8A74-4A46-A2FF-CFE0D0B624F4)} }
          AUDIT { TIMESTAMP = 1562039624; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R9 - 05E94ABD-8A74-4A46-A2FF-CFE0D0B624F4)} }
          AUDIT { TIMESTAMP = 1562039638; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R10 - 2FC4646D-BF0F-4398-85E7-C80A2D7219FF)} }
          AUDIT { TIMESTAMP = 1562039714; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R10 - 2FC4646D-BF0F-4398-85E7-C80A2D7219FF)} }
          AUDIT { TIMESTAMP = 1562039722; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R11 - A82206BE-C9B9-4772-BBEA-4457A3E3008E)} }
          AUDIT { TIMESTAMP = 1562039780; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R11 - A82206BE-C9B9-4772-BBEA-4457A3E3008E)} }
          AUDIT { TIMESTAMP = 1562039858; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R12 - 9A5E9EB9-5DFA-4838-A5D3-7803BC201449)} }
          AUDIT { TIMESTAMP = 1562039958; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R12 - 9A5E9EB9-5DFA-4838-A5D3-7803BC201449)} }
          AUDIT { TIMESTAMP = 1562039986; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R13 - C591705B-B290-45B8-A1D5-43D3BCAB4EF9)} }
          AUDIT { TIMESTAMP = 1562039992; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R13 - C591705B-B290-45B8-A1D5-43D3BCAB4EF9)} }
          AUDIT { TIMESTAMP = 1562040040; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R14 - 98D0245C-E8C5-467C-BF2D-946F9068783B)} }
          AUDIT { TIMESTAMP = 1562040081; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R14 - 98D0245C-E8C5-467C-BF2D-946F9068783B)} }
          AUDIT { TIMESTAMP = 1562040082; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertRuleAt(R15 - DFAB87AE-69EE-4AAA-AEF8-094C47004000)} }
          AUDIT { TIMESTAMP = 1562040087; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R15 - DFAB87AE-69EE-4AAA-AEF8-094C47004000)} }
          AUDIT { TIMESTAMP = 1562040470; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R4 - E0B96919-ADC3-433D-B43C-645749595862)} }
          AUDIT { TIMESTAMP = 1562040583; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {EditRule(R3 - 3FFBBA6A-C12C-41D0-923B-F194D03C67F6)} }
          RULE {
            GUID = {0E535615-8ACA-4875-BA54-561ACF44E7B4};
            AUDIT { TIMESTAMP = 1562036318; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562036318; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.alto_neg')} }
            AUDIT { TIMESTAMP = 1562037414; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {ReplacePremiseTerms('error.alto_neg' with 'error.ok')} }
            AUDIT { TIMESTAMP = 1562037419; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_ok')} }
            AUDIT { TIMESTAMP = 1562037427; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            IF    d_error = d_ok
              AND error = ok
            THEN  var3 = pwm_zero;
          } /* RULE */
          RULE {
            GUID = {BF0BCF48-3399-4D9F-96B7-05E60D73EF93};
            AUDIT { TIMESTAMP = 1562037443; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562037443; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.ok')} }
            AUDIT { TIMESTAMP = 1562037452; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_alto_pos')} }
            AUDIT { TIMESTAMP = 1562037657; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_alto')} }
            AUDIT { TIMESTAMP = 1562037805; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {ReplaceConclusionTerm('var3.pwm_alto' with 'var3.pwm_bajo')} }
            IF    d_error = d_pos
              AND error = ok
            THEN  var3 = pwm_bajo;
          } /* RULE */
          RULE {
            GUID = {3FFBBA6A-C12C-41D0-923B-F194D03C67F6};
            AUDIT { TIMESTAMP = 1562037687; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562037687; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.ok')} }
            AUDIT { TIMESTAMP = 1562037905; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_alto_neg')} }
            AUDIT { TIMESTAMP = 1562037907; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            AUDIT { TIMESTAMP = 1562040583; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {ReplaceConclusionTerm('var3.pwm_zero' with 'var3.pwm_bajo')} }
            IF    d_error = d_neg
              AND error = ok
            THEN  var3 = pwm_bajo;
          } /* RULE */
          RULE {
            GUID = {E0B96919-ADC3-433D-B43C-645749595862};
            AUDIT { TIMESTAMP = 1562038048; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562038048; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.ok')} }
            AUDIT { TIMESTAMP = 1562038062; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {ReplacePremiseTerms('error.ok' with 'error.medio_pos')} }
            AUDIT { TIMESTAMP = 1562038072; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_ok')} }
            AUDIT { TIMESTAMP = 1562038155; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_bajo')} }
            AUDIT { TIMESTAMP = 1562040470; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {ReplaceConclusionTerm('var3.pwm_bajo' with 'var3.pwm_medio')} }
            IF    d_error = d_ok
              AND error = medio_pos
            THEN  var3 = pwm_medio;
          } /* RULE */
          RULE {
            GUID = {D77FE709-A8C2-412C-A9E2-85DFACECDE9A};
            AUDIT { TIMESTAMP = 1562038190; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562038190; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.medio_pos')} }
            AUDIT { TIMESTAMP = 1562038200; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_pos')} }
            AUDIT { TIMESTAMP = 1562038233; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_medio')} }
            IF    d_error = d_pos
              AND error = medio_pos
            THEN  var3 = pwm_medio;
          } /* RULE */
          RULE {
            GUID = {9F48C289-89DC-496A-AED7-43C349745349};
            AUDIT { TIMESTAMP = 1562038268; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562038268; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.medio_pos')} }
            AUDIT { TIMESTAMP = 1562038277; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_neg')} }
            AUDIT { TIMESTAMP = 1562038375; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            AUDIT { TIMESTAMP = 1562039068; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {ReplaceConclusionTerm('var3.pwm_zero' with 'var3.pwm_medio')} }
            IF    d_error = d_neg
              AND error = medio_pos
            THEN  var3 = pwm_medio;
          } /* RULE */
          RULE {
            GUID = {996EB08F-320E-4774-A6EF-AF46B29F5181};
            AUDIT { TIMESTAMP = 1562038403; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562038403; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.alto_pos')} }
            AUDIT { TIMESTAMP = 1562038407; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_ok')} }
            AUDIT { TIMESTAMP = 1562038814; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_alto')} }
            IF    d_error = d_ok
              AND error = alto_pos
            THEN  var3 = pwm_alto;
          } /* RULE */
          RULE {
            GUID = {3CD51256-67CC-4600-ACCE-0580F2098630};
            AUDIT { TIMESTAMP = 1562039260; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562039260; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.alto_pos')} }
            AUDIT { TIMESTAMP = 1562039271; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_pos')} }
            AUDIT { TIMESTAMP = 1562039477; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_alto')} }
            IF    d_error = d_pos
              AND error = alto_pos
            THEN  var3 = pwm_alto;
          } /* RULE */
          RULE {
            GUID = {05E94ABD-8A74-4A46-A2FF-CFE0D0B624F4};
            AUDIT { TIMESTAMP = 1562039492; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562039492; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.alto_pos')} }
            AUDIT { TIMESTAMP = 1562039498; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_neg')} }
            AUDIT { TIMESTAMP = 1562039624; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_alto')} }
            IF    d_error = d_neg
              AND error = alto_pos
            THEN  var3 = pwm_alto;
          } /* RULE */
          RULE {
            GUID = {2FC4646D-BF0F-4398-85E7-C80A2D7219FF};
            AUDIT { TIMESTAMP = 1562039638; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562039638; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.medio_neg')} }
            AUDIT { TIMESTAMP = 1562039656; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_ok')} }
            AUDIT { TIMESTAMP = 1562039714; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            IF    d_error = d_ok
              AND error = medio_neg
            THEN  var3 = pwm_zero;
          } /* RULE */
          RULE {
            GUID = {A82206BE-C9B9-4772-BBEA-4457A3E3008E};
            AUDIT { TIMESTAMP = 1562039722; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562039722; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.medio_neg')} }
            AUDIT { TIMESTAMP = 1562039737; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_pos')} }
            AUDIT { TIMESTAMP = 1562039780; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            IF    d_error = d_pos
              AND error = medio_neg
            THEN  var3 = pwm_zero;
          } /* RULE */
          RULE {
            GUID = {9A5E9EB9-5DFA-4838-A5D3-7803BC201449};
            AUDIT { TIMESTAMP = 1562039858; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562039858; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.medio_neg')} }
            AUDIT { TIMESTAMP = 1562039864; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_neg')} }
            AUDIT { TIMESTAMP = 1562039958; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            IF    d_error = d_neg
              AND error = medio_neg
            THEN  var3 = pwm_zero;
          } /* RULE */
          RULE {
            GUID = {C591705B-B290-45B8-A1D5-43D3BCAB4EF9};
            AUDIT { TIMESTAMP = 1562039986; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562039986; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.alto_neg')} }
            AUDIT { TIMESTAMP = 1562039990; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_ok')} }
            AUDIT { TIMESTAMP = 1562039992; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            IF    d_error = d_ok
              AND error = alto_neg
            THEN  var3 = pwm_zero;
          } /* RULE */
          RULE {
            GUID = {98D0245C-E8C5-467C-BF2D-946F9068783B};
            AUDIT { TIMESTAMP = 1562040040; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562040040; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.alto_neg')} }
            AUDIT { TIMESTAMP = 1562040043; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_pos')} }
            AUDIT { TIMESTAMP = 1562040081; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            IF    d_error = d_pos
              AND error = alto_neg
            THEN  var3 = pwm_zero;
          } /* RULE */
          RULE {
            GUID = {DFAB87AE-69EE-4AAA-AEF8-094C47004000};
            AUDIT { TIMESTAMP = 1562040082; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {CreateRule()} }
            AUDIT { TIMESTAMP = 1562040083; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('error.alto_neg')} }
            AUDIT { TIMESTAMP = 1562040084; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertPremiseTerms('d_error.d_neg')} }
            AUDIT { TIMESTAMP = 1562040087; NAME = asiel; LICENSE = FT 10005 28 HS; RELEASE = 8.21c; COMMENT {InsertConclusionTerms('var3.pwm_zero')} }
            IF    d_error = d_neg
              AND error = alto_neg
            THEN  var3 = pwm_zero;
          } /* RULE */
        } /* RULEGROUP */
      } /* RULEBLOCK */
    } /* OBJECT_SECTION */
  } /* MODEL */
} /* PROJECT */
/* FT 10005 28 HS */
