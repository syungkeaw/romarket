<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\ShopItem;

/**
 * ShopItemSearch represents the model behind the search form about `common\models\ShopItem`.
 */
class ShopItemSearch extends ShopItem
{
    
    public function attributes()
    {
        // add related fields to searchable attributes
        return array_merge(parent::attributes(), ['item.item_name', 'shop.shop_name', 'shop.character', 'option']);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'shop_id', 'price', 'amount', 'created_at', 'updated_at', 'enhancement'], 'integer'],
            [['item_id', 'item.item_name', 'shop.shop_name', 'shop.character', 'option'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = ShopItem::find();

        $query->joinWith(['item']);
        $query->joinWith(['shop']);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'attributes' => [
                   'item.item_name', 
                   'shop.shop_name',
                   'shop.character',
                   'price', 
                   'amount', 
                   'updated_at', 
                   'enhancement', 
                   'option',
                ],
                'defaultOrder' => ['updated_at' => SORT_DESC],
            ],
        ]);

        

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'item_id' => $this->item_id,
            'shop_id' => $this->shop_id,
            'price' => $this->price,
            'amount' => $this->amount,
            'enhancement' => $this->enhancement,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'item.item_name', $this->getAttribute('item.item_name')]);
        $query->andFilterWhere(['like', 'shop.shop_name', $this->getAttribute('shop.shop_name')]);
        $query->andFilterWhere(['like', 'shop.character', $this->getAttribute('shop.character')]);

        // if(preg_match('/\\[\\d\\]/', $this->getAttribute('item.item_name'), $matches)){
        //     $query->andFilterWhere(['item.item_slot' => str_replace(['[', ']'], '', $matches[0])]);
        // }

        return $dataProvider;
    }
}
